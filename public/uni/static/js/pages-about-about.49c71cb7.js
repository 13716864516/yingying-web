(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["pages-about-about"],{"079d":function(t,e,n){"use strict";var i=n("0eb5"),a=n.n(i);a.a},"07c1":function(t,e,n){"use strict";var i=n("4ea4");Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0;var a=i(n("63ca")),r=i(n("c2ef")),c={name:"UniNavBar",components:{uniStatusBar:a.default,uniIcons:r.default},props:{title:{type:String,default:""},leftText:{type:String,default:""},rightText:{type:String,default:""},leftIcon:{type:String,default:""},rightIcon:{type:String,default:""},fixed:{type:[Boolean,String],default:!1},color:{type:String,default:"#000000"},backgroundColor:{type:String,default:"#FFFFFF"},statusBar:{type:[Boolean,String],default:!1},shadow:{type:[Boolean,String],default:!1},border:{type:[Boolean,String],default:!0}},mounted:function(){uni.report&&""!==this.title&&uni.report("title",this.title)},methods:{onClickLeft:function(){this.$emit("clickLeft")},onClickRight:function(){this.$emit("clickRight")}}};e.default=c},"0911":function(t,e,n){"use strict";Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0;var i=uni.getSystemInfoSync().statusBarHeight+"px",a={name:"UniStatusBar",data:function(){return{statusBarHeight:i}}};e.default=a},"0e1d":function(t,e,n){var i=n("24fb");e=i(!1),e.push([t.i,".uni-status-bar[data-v-b8634a6e]{width:%?750?%;height:20px\n\t\t/* height: var(--status-bar-height);\n */}",""]),t.exports=e},"0eb5":function(t,e,n){var i=n("3b51");"string"===typeof i&&(i=[[t.i,i,""]]),i.locals&&(t.exports=i.locals);var a=n("4f06").default;a("63be8776",i,!0,{sourceMap:!1,shadowMode:!1})},"0f9a":function(t,e,n){var i=n("24fb");e=i(!1),e.push([t.i,'.uni-list-item[data-v-2cb72ecc]{font-size:%?32?%;position:relative;flex-direction:column;justify-content:space-between;padding-left:%?30?%}.uni-list-item--disabled[data-v-2cb72ecc]{opacity:.3}.uni-list-item--hover[data-v-2cb72ecc]{background-color:#f1f1f1}.uni-list-item__container[data-v-2cb72ecc]{position:relative;\ndisplay:flex;\nflex-direction:row;padding:%?24?% %?30?%;padding-left:0;flex:1;position:relative;justify-content:space-between;align-items:center;\n}.uni-list-item--first[data-v-2cb72ecc]{border-top-width:0}\n.uni-list-item__container[data-v-2cb72ecc]:after{position:absolute;top:0;right:0;left:0;height:1px;content:"";-webkit-transform:scaleY(.5);transform:scaleY(.5)\n\t\t/* background-color: #e5e5e5; */}.uni-list-item--first[data-v-2cb72ecc]:after{height:0}\n.uni-list-item__content[data-v-2cb72ecc]{\ndisplay:flex;\nflex:1;overflow:hidden;flex-direction:column;color:#3b4144}.uni-list-item__content-title[data-v-2cb72ecc]{font-size:%?28?%;color:#3b4144;overflow:hidden}.uni-list-item__content-note[data-v-2cb72ecc]{margin-top:%?6?%;color:#999;font-size:%?24?%;overflow:hidden}.uni-list-item__extra[data-v-2cb72ecc]{\n\t\t/* width: 25%;\n */\ndisplay:flex;\nflex-direction:row;justify-content:flex-end;align-items:center}.uni-list-item__icon[data-v-2cb72ecc]{margin-right:%?18?%;flex-direction:row;justify-content:center;align-items:center}.uni-list-item__icon-img[data-v-2cb72ecc]{height:%?52?%;width:%?52?%}.uni-list-item__extra-text[data-v-2cb72ecc]{color:#999;font-size:%?24?%}',""]),t.exports=e},"1d66":function(t,e,n){"use strict";n.r(e);var i=n("f0fc"),a=n("b3ed");for(var r in a)"default"!==r&&function(t){n.d(e,t,(function(){return a[t]}))}(r);n("079d");var c,o=n("f0c5"),u=Object(o["a"])(a["default"],i["b"],i["c"],!1,null,"004bfc5b",null,!1,i["a"],c);e["default"]=u.exports},"215e":function(t,e,n){var i=n("0f9a");"string"===typeof i&&(i=[[t.i,i,""]]),i.locals&&(t.exports=i.locals);var a=n("4f06").default;a("efb64a14",i,!0,{sourceMap:!1,shadowMode:!1})},"221f":function(t,e,n){var i=n("680f");"string"===typeof i&&(i=[[t.i,i,""]]),i.locals&&(t.exports=i.locals);var a=n("4f06").default;a("4dc26379",i,!0,{sourceMap:!1,shadowMode:!1})},"3b51":function(t,e,n){var i=n("24fb");e=i(!1),e.push([t.i,".uni-badge[data-v-004bfc5b]{\ndisplay:flex;\njustify-content:center;flex-direction:row;height:20px;line-height:20px;color:#333;border-radius:100px;background-color:#f1f1f1;background-color:initial;text-align:center;font-family:Helvetica Neue,Helvetica,sans-serif;font-size:12px;padding:0 6px}.uni-badge--inverted[data-v-004bfc5b]{padding:0 5px 0 0;color:#f1f1f1}.uni-badge--default[data-v-004bfc5b]{color:#333;background-color:#f1f1f1}.uni-badge--default-inverted[data-v-004bfc5b]{color:#999;background-color:initial}.uni-badge--primary[data-v-004bfc5b]{color:#fff;background-color:#007aff}.uni-badge--primary-inverted[data-v-004bfc5b]{color:#007aff;background-color:initial}.uni-badge--success[data-v-004bfc5b]{color:#fff;background-color:#4cd964}.uni-badge--success-inverted[data-v-004bfc5b]{color:#4cd964;background-color:initial}.uni-badge--warning[data-v-004bfc5b]{color:#fff;background-color:#f0ad4e}.uni-badge--warning-inverted[data-v-004bfc5b]{color:#f0ad4e;background-color:initial}.uni-badge--error[data-v-004bfc5b]{color:#fff;background-color:#dd524d}.uni-badge--error-inverted[data-v-004bfc5b]{color:#dd524d;background-color:initial}.uni-badge--small[data-v-004bfc5b]{-webkit-transform:scale(.8);transform:scale(.8);-webkit-transform-origin:center center;transform-origin:center center}",""]),t.exports=e},"3c90":function(t,e,n){"use strict";n.r(e);var i=n("9413"),a=n("cac3");for(var r in a)"default"!==r&&function(t){n.d(e,t,(function(){return a[t]}))}(r);n("ceb8");var c,o=n("f0c5"),u=Object(o["a"])(a["default"],i["b"],i["c"],!1,null,"3445bc1c",null,!1,i["a"],c);e["default"]=u.exports},"3e85":function(t,e,n){"use strict";var i;n.d(e,"b",(function(){return a})),n.d(e,"c",(function(){return r})),n.d(e,"a",(function(){return i}));var a=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("v-uni-view",{staticClass:"uni-status-bar",style:{height:t.statusBarHeight}},[t._t("default")],2)},r=[]},"492a":function(t,e,n){"use strict";n.r(e);var i=n("674b"),a=n.n(i);for(var r in i)"default"!==r&&function(t){n.d(e,t,(function(){return i[t]}))}(r);e["default"]=a.a},5244:function(t,e,n){"use strict";n.d(e,"b",(function(){return a})),n.d(e,"c",(function(){return r})),n.d(e,"a",(function(){return i}));var i={uniIcons:n("47e5").default},a=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("v-uni-view",{staticClass:"uni-list-item",class:t.disabled?"uni-list-item--disabled":"",attrs:{"hover-class":t.disabled||t.showSwitch?"":"uni-list-item--hover"},on:{click:function(e){arguments[0]=e=t.$handleEvent(e),t.onClick.apply(void 0,arguments)}}},[n("v-uni-view",{staticClass:"uni-list-item__container",class:{"uni-list-item--first":t.isFirstChild}},[t.thumb?n("v-uni-view",{staticClass:"uni-list-item__icon"},[n("v-uni-image",{staticClass:"uni-list-item__icon-img",attrs:{src:t.thumb}})],1):t.showExtraIcon?n("v-uni-view",{staticClass:"uni-list-item__icon"},[t._t("icon",[n("uni-icons",{staticClass:"uni-icon-wrapper",attrs:{color:t.extraIcon.color,size:t.extraIcon.size,type:t.extraIcon.type}})])],2):t._e(),n("v-uni-view",{staticClass:"uni-list-item__content"},[t._t("default"),n("v-uni-text",{staticClass:"uni-list-item__content-title"},[t._v(t._s(t.title))]),t.note?n("v-uni-text",{staticClass:"uni-list-item__content-note"},[t._v(t._s(t.note))]):t._e()],2),t.showBadge||t.showArrow||t.showSwitch?n("v-uni-view",{staticClass:"uni-list-item__extra"},[t._t("right",[t.rightText?n("v-uni-text",{staticClass:"uni-list-item__extra-text"},[t._v(t._s(t.rightText))]):t._e(),t.showBadge?n("uni-badge",{attrs:{type:t.badgeType,text:t.badgeText}}):t._e(),t.showSwitch?n("v-uni-switch",{attrs:{disabled:t.disabled,checked:t.switchChecked},on:{change:function(e){arguments[0]=e=t.$handleEvent(e),t.onSwitchChange.apply(void 0,arguments)}}}):t._e(),t.showArrow?n("uni-icons",{staticClass:"uni-icon-wrapper",attrs:{size:20,color:"#bbb",type:"arrowright"}}):t._e()])],2):t._e()],1)],1)},r=[]},"621f":function(t,e,n){"use strict";var i=n("215e"),a=n.n(i);a.a},"63ca":function(t,e,n){"use strict";n.r(e);var i=n("3e85"),a=n("745f");for(var r in a)"default"!==r&&function(t){n.d(e,t,(function(){return a[t]}))}(r);n("a377");var c,o=n("f0c5"),u=Object(o["a"])(a["default"],i["b"],i["c"],!1,null,"b8634a6e",null,!1,i["a"],c);e["default"]=u.exports},"674b":function(t,e,n){"use strict";var i=n("4ea4");Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0;var a=i(n("c2ef")),r=i(n("1d66")),c={name:"UniListItem",components:{uniIcons:a.default,uniBadge:r.default},props:{title:{type:String,default:""},note:{type:String,default:""},disabled:{type:[Boolean,String],default:!1},showArrow:{type:[Boolean,String],default:!0},showBadge:{type:[Boolean,String],default:!1},showSwitch:{type:[Boolean,String],default:!1},switchChecked:{type:[Boolean,String],default:!1},badgeText:{type:String,default:""},badgeType:{type:String,default:"success"},rightText:{type:String,default:""},thumb:{type:String,default:""},showExtraIcon:{type:[Boolean,String],default:!1},extraIcon:{type:Object,default:function(){return{type:"contact",color:"#000000",size:20}}}},data:function(){return{isFirstChild:!1,list:[]}},mounted:function(){this.list.firstChildAppend||(this.list.firstChildAppend=!0,this.isFirstChild=!0)},methods:{onClick:function(){this.$emit("click")},onSwitchChange:function(t){this.$emit("switchChange",t.detail)}}};e.default=c},"680f":function(t,e,n){var i=n("24fb");e=i(!1),e.push([t.i,".uni-nav-bar-text[data-v-3445bc1c]{\n\n\nfont-size:%?0?%\n}.uni-nav-bar-right-text[data-v-3445bc1c]{font-size:%?28?%}.uni-navbar__content[data-v-3445bc1c]{position:relative;background-color:#fff;overflow:hidden}.uni-navbar__content_view[data-v-3445bc1c]{\ndisplay:flex;\nalign-items:center;flex-direction:row;\nmargin-top:%?-10?%\n}.uni-navbar__header[data-v-3445bc1c]{\ndisplay:flex;\nflex-direction:row;height:44px;line-height:44px;font-size:16px}.uni-navbar__header-btns[data-v-3445bc1c]{\ndisplay:flex;\nflex-wrap:nowrap;width:%?120?%;padding:0 6px;justify-content:center;align-items:center}.uni-navbar__header-btns-left[data-v-3445bc1c]{\ndisplay:flex;\nwidth:%?150?%;justify-content:flex-start}.uni-navbar__header-btns-right[data-v-3445bc1c]{\ndisplay:flex;\nwidth:%?150?%;padding-right:%?30?%;justify-content:flex-end}.uni-navbar__header-container[data-v-3445bc1c]{flex:1}.uni-navbar__header-container-inner[data-v-3445bc1c]{\ndisplay:flex;\nflex:1;align-items:center;justify-content:center;font-size:%?28?%}.uni-navbar__placeholder-view[data-v-3445bc1c]{height:44px}.uni-navbar--fixed[data-v-3445bc1c]{position:fixed;z-index:998}.uni-navbar--shadow[data-v-3445bc1c]{\nbox-shadow:0 1px 6px #ccc\n}.uni-navbar--border[data-v-3445bc1c]{border-bottom-width:%?1?%;border-bottom-style:solid;border-bottom-color:#e5e5e5}",""]),t.exports=e},"745f":function(t,e,n){"use strict";n.r(e);var i=n("0911"),a=n.n(i);for(var r in i)"default"!==r&&function(t){n.d(e,t,(function(){return i[t]}))}(r);e["default"]=a.a},"789c":function(t,e,n){"use strict";var i;n.d(e,"b",(function(){return a})),n.d(e,"c",(function(){return r})),n.d(e,"a",(function(){return i}));var a=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("v-uni-view",[n("v-uni-view",{staticClass:"flex flex-column pb-2"},[n("v-uni-text",{staticClass:"font text-light-muted",staticStyle:{"padding-left":"20rpx"}},[t._v("关于我们")])],1)],1)},r=[]},8009:function(t,e,n){"use strict";var i=n("4ea4");Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0;var a=i(n("87e0")),r=i(n("3c90")),c={components:{uniListItem:a.default,uniNavBar:r.default},data:function(){return{}},methods:{back:function(){uni.navigateBack({delta:1})}}};e.default=c},"87e0":function(t,e,n){"use strict";n.r(e);var i=n("5244"),a=n("492a");for(var r in a)"default"!==r&&function(t){n.d(e,t,(function(){return a[t]}))}(r);n("621f");var c,o=n("f0c5"),u=Object(o["a"])(a["default"],i["b"],i["c"],!1,null,"2cb72ecc",null,!1,i["a"],c);e["default"]=u.exports},"8c42":function(t,e,n){"use strict";n("a9e3"),Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0;var i={name:"UniBadge",props:{type:{type:String,default:"default"},inverted:{type:Boolean,default:!1},text:{type:[String,Number],default:""},size:{type:String,default:"normal"}},data:function(){return{badgeStyle:""}},watch:{text:function(){this.setStyle()}},mounted:function(){this.setStyle()},methods:{setStyle:function(){this.badgeStyle="width: ".concat(8*String(this.text).length+12,"px")},onClick:function(){this.$emit("click")}}};e.default=i},9413:function(t,e,n){"use strict";n.d(e,"b",(function(){return a})),n.d(e,"c",(function(){return r})),n.d(e,"a",(function(){return i}));var i={uniIcons:n("47e5").default},a=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("v-uni-view",{staticClass:"uni-navbar"},[n("v-uni-view",{staticClass:"uni-navbar__content",class:{"uni-navbar--fixed":t.fixed,"uni-navbar--shadow":t.shadow,"uni-navbar--border":t.border},style:{"background-color":t.backgroundColor}},[t.statusBar?n("uni-status-bar"):t._e(),n("v-uni-view",{staticClass:"uni-navbar__header uni-navbar__content_view",style:{color:t.color,backgroundColor:t.backgroundColor}},[n("v-uni-view",{staticClass:"uni-navbar__header-btns uni-navbar__header-btns-left uni-navbar__content_view",on:{click:function(e){arguments[0]=e=t.$handleEvent(e),t.onClickLeft.apply(void 0,arguments)}}},[t.leftIcon.length?n("v-uni-view",{staticClass:"uni-navbar__content_view"},[n("uni-icons",{attrs:{color:t.color,type:t.leftIcon,size:"24"}})],1):t._e(),t.leftText.length?n("v-uni-view",{staticClass:"uni-navbar-btn-text uni-navbar__content_view",class:{"uni-navbar-btn-icon-left":!t.leftIcon.length}},[n("v-uni-text",{style:{color:t.color,fontSize:"14px"}},[t._v(t._s(t.leftText))])],1):t._e(),t._t("left")],2),n("v-uni-view",{staticClass:"uni-navbar__header-container uni-navbar__content_view"},[t.title.length?n("v-uni-view",{staticClass:"uni-navbar__header-container-inner uni-navbar__content_view"},[n("v-uni-text",{staticClass:"uni-nav-bar-text",staticStyle:{"{color":"#000000 }"}},[t._v(t._s(t.title))])],1):t._e(),t._t("default")],2),n("v-uni-view",{staticClass:"uni-navbar__header-btns uni-navbar__content_view",class:t.title.length?"uni-navbar__header-btns-right":"",on:{click:function(e){arguments[0]=e=t.$handleEvent(e),t.onClickRight.apply(void 0,arguments)}}},[t.rightIcon.length?n("v-uni-view",{staticClass:"uni-navbar__content_view"},[n("uni-icons",{attrs:{color:t.color,type:t.rightIcon,size:"24"}})],1):t._e(),t.rightText.length&&!t.rightIcon.length?n("v-uni-view",{staticClass:"uni-navbar-btn-text uni-navbar__content_view"},[n("v-uni-text",{staticClass:"uni-nav-bar-right-text"},[t._v(t._s(t.rightText))])],1):t._e(),t._t("right")],2)],1)],1),t.fixed?n("v-uni-view",{staticClass:"uni-navbar__placeholder"},[t.statusBar?n("uni-status-bar"):t._e(),n("v-uni-view",{staticClass:"uni-navbar__placeholder-view"})],1):t._e()],1)},r=[]},a377:function(t,e,n){"use strict";var i=n("b0c7"),a=n.n(i);a.a},a97b:function(t,e,n){"use strict";n.r(e);var i=n("789c"),a=n("fe08");for(var r in a)"default"!==r&&function(t){n.d(e,t,(function(){return a[t]}))}(r);var c,o=n("f0c5"),u=Object(o["a"])(a["default"],i["b"],i["c"],!1,null,"72cc778a",null,!1,i["a"],c);e["default"]=u.exports},b0c7:function(t,e,n){var i=n("0e1d");"string"===typeof i&&(i=[[t.i,i,""]]),i.locals&&(t.exports=i.locals);var a=n("4f06").default;a("01b84fa8",i,!0,{sourceMap:!1,shadowMode:!1})},b3ed:function(t,e,n){"use strict";n.r(e);var i=n("8c42"),a=n.n(i);for(var r in i)"default"!==r&&function(t){n.d(e,t,(function(){return i[t]}))}(r);e["default"]=a.a},cac3:function(t,e,n){"use strict";n.r(e);var i=n("07c1"),a=n.n(i);for(var r in i)"default"!==r&&function(t){n.d(e,t,(function(){return i[t]}))}(r);e["default"]=a.a},ceb8:function(t,e,n){"use strict";var i=n("221f"),a=n.n(i);a.a},f0fc:function(t,e,n){"use strict";var i;n.d(e,"b",(function(){return a})),n.d(e,"c",(function(){return r})),n.d(e,"a",(function(){return i}));var a=function(){var t=this,e=t.$createElement,n=t._self._c||e;return t.text?n("v-uni-view",{staticClass:"uni-badge",class:t.inverted?"uni-badge--"+t.type+" uni-badge--"+t.size+" uni-badge--"+t.type+"-inverted":"uni-badge--"+t.type+" uni-badge--"+t.size,style:t.badgeStyle,on:{click:function(e){arguments[0]=e=t.$handleEvent(e),t.onClick()}}},[t._t("default"),t._v(t._s(t.text))],2):t._e()},r=[]},fe08:function(t,e,n){"use strict";n.r(e);var i=n("8009"),a=n.n(i);for(var r in i)"default"!==r&&function(t){n.d(e,t,(function(){return i[t]}))}(r);e["default"]=a.a}}]);