describe("zoomOnTouch (option)",()=>{it("should zoom on touch by default",e=>{const t=window.createImage(),n=new Cropper(t,{ready(){if(window.PointerEvent){const e=window.createEvent("pointerdown"),t=window.createEvent("pointerdown"),o=window.createEvent("pointermove"),p=window.createEvent("pointermove");e.pointerId=1,e.pageX=100,e.pageY=100,t.pointerId=2,t.pageX=200,t.pageY=200,o.pointerId=1,o.pageX=125,o.pageY=125,p.pointerId=2,p.pageX=175,p.pageY=175,n.cropper.dispatchEvent(e),n.cropper.dispatchEvent(t),n.cropper.dispatchEvent(o),n.cropper.dispatchEvent(p)}else{const e=window.createEvent("touchstart"),t=window.createEvent("touchstart"),o=window.createEvent("touchmove"),p=window.createEvent("touchmove");e.changedTouches={0:{identifier:1,pageX:100,pageY:100},length:1},t.changedTouches={0:{identifier:2,pageX:200,pageY:200},length:1},o.changedTouches={0:{identifier:1,pageX:125,pageY:125},length:1},p.changedTouches={0:{identifier:2,pageX:175,pageY:175},length:1},n.cropper.dispatchEvent(e),n.cropper.dispatchEvent(t),n.cropper.dispatchEvent(o),n.cropper.dispatchEvent(p)}},zoom(){e()}});expect(n.options.zoomOnTouch).to.be["true"]}),it("should not zoom on touch",e=>{const t=window.createImage(),n=new Cropper(t,{zoomOnTouch:!1,ready(){window.PointerEvent?(n.cropper.dispatchEvent(new PointerEvent("pointerdown",{pointerId:1,pageX:100,pageY:100})),n.cropper.dispatchEvent(new PointerEvent("pointerdown",{pointerId:2,pageX:200,pageY:200})),n.cropper.dispatchEvent(new PointerEvent("pointermove",{pointerId:1,pageX:125,pageY:125})),n.cropper.dispatchEvent(new PointerEvent("pointermove",{pointerId:2,pageX:175,pageY:175})),n.cropper.dispatchEvent(new PointerEvent("pointerup",{pointerId:1,pageX:125,pageY:125})),n.cropper.dispatchEvent(new PointerEvent("pointerup",{pointerId:2,pageX:175,pageY:175}))):(n.cropper.dispatchEvent(new TouchEvent("touchstart",{changedTouches:{0:{identifier:1,pageX:100,pageY:100},1:{identifier:2,pageX:200,pageY:200},length:2}})),n.cropper.dispatchEvent(new TouchEvent("touchmove",{changedTouches:{0:{identifier:1,pageX:125,pageY:125},1:{identifier:2,pageX:175,pageY:175},length:2}})),n.cropper.dispatchEvent(new TouchEvent("touchend",{changedTouches:{0:{identifier:1,pageX:125,pageY:125},1:{identifier:2,pageX:175,pageY:175},length:2}}))),e()},zoom(){expect.fail(1,0)}});expect(n.options.zoomOnTouch).to.be["false"]})});