from PIL import Image,ImageDraw,ImageColor,ImageFont
import os

def darken(hex,c):
    dg = ImageColor.getcolor(str(hex), "RGB")
    dg = (max(dg[0]-c,0),max(dg[1]-c,0),max(dg[2]-c,0))
    return'#%02x%02x%02x' % dg
    
def main():
    color = (os.popen("./palette show default raw").read()).split()
    identifier = (os.popen("./palette identifier").read()).split()
    template = Image.new('RGB', (2752, 768))
    board = ImageDraw.Draw(template)
        # Pillow does not have a builtin way to acess fonts, a full path must be specified
        # This action can be done using python-fontconfig but wish not to import this library
            #TODO: find a way a to get a cool looking font automatically
    filename="/usr/share/fonts/TTF/FiraCode-Regular.ttf"
    font_0 = ImageFont.truetype(filename, size=36)
    font_1 = ImageFont.truetype(filename, size=64)
    Sj = 0
    for j in range(3):
        for i in range(8):
            Sj += 1
            df=str(color[Sj-1])
            dk=str(identifier[Sj-1])
            dl=darken(color[Sj-1],35)
            shape = [(i*344,j*256), ((i+1)*344,(j+1)*256)]
            board.rectangle(shape,fill=df)
            board.rectangle([(shape[0][0],shape[0][1]+246),(shape[1][0],shape[1][1])],fill=dl)
            board.text((shape[0][0]+82,shape[0][1]+224),str(dl).upper(),fill=dl,anchor="mm",font=font_0)
            board.text((shape[0][0]+172,shape[0][1]+128),dk,fill=dl,anchor="mm",font=font_1)
        pass
    pass
    template.save('board.png')

if __name__ == '__main__':
    main()
