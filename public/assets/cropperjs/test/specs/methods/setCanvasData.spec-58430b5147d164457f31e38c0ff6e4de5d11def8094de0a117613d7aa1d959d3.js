describe("setCanvasData (method)",()=>{it("should change the positions only",t=>{const e=window.createImage(),a=new Cropper(e,{ready(){const e=a.getCanvasData(),o=a.setCanvasData({left:16,top:9}).getCanvasData();expect(o.left).to.not.equal(e.left),expect(o.top).to.not.equal(e.top),expect(o.width).to.equal(e.width),expect(o.height).to.equal(e.height),t()}})}),it("should change the sizes only",t=>{const e=window.createImage(),a=new Cropper(e,{ready(){const e=a.getCanvasData(),o=a.setCanvasData({width:320,height:180}).getCanvasData();expect(o.left).to.equal(e.left),expect(o.top).to.equal(e.top),expect(o.width).to.not.equal(e.width),expect(o.height).to.not.equal(e.height),t()}})})});