describe("minContainerHeight (option)",()=>{it("should be `100` by default",()=>{const e=window.createImage(),t=new Cropper(e);expect(t.options.minContainerHeight).to.equal(100)}),it("should match the given minimum size",e=>{const t=window.createImage();t.parentElement.style.height="90px";const n=180,i=new Cropper(t,{minContainerHeight:n,ready(){expect(i.getContainerData().height).to.equal(n),e()}});expect(i.options.minContainerHeight).to.equal(n)})});