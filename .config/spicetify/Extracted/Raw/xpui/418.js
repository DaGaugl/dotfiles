"use strict";(("undefined"!=typeof self?self:global).webpackChunkopen=("undefined"!=typeof self?self:global).webpackChunkopen||[]).push([[418],{98196:function(e,t,a){a.d(t,{q:function(){return L},o:function(){return v}});var n=a(27378),r=a.n(n),l=a(66917),c=a.n(l),o=a(95005),s=a(93306),i=a(75609),E=a(21380),u=a(60042),m=a.n(u),_="_QGXLsEyg7RRgIp_EZ1l",S="x-downloadButton-DownloadButton",d="x-downloadButton-button",I="C3GcGKysJKlmAAxQ7R_M",Z="xZlEQ5p_NEGYozT1C4ER",f="_UjZ8K0pVb8aAu6s3cX5",p="_6k_YuexiKYPfsT4GXhb",g=a(28101),w=a(35181),N=a(57661),h=a(3108);var y=a(82614),b=a(86131);let L;!function(e){e[e.sm=24]="sm",e[e.md=32]="md"}(L||(L={}));const v=({uri:e,isFollowing:t,onFollow:a,size:l=L.sm,className:u})=>{const v={"--size":`${l}px`},{useDownloading:O,useDownloadCapability:A}=(0,n.useContext)(i.I),[D,R]=(0,n.useState)(!1),[C,P]=A(c().isEpisode(e)),[k,M]=(0,n.useState)(!1),{currentAvailability:j,progress:x,beginDownload:z,clearDownload:T}=O(e);((e,t)=>{const a=(0,h.r)(),r=(0,n.useRef)(!1);(0,n.useEffect)((()=>{e===E.V8.DOWNLOADING&&!1===r.current&&(r.current=!0,a.say(w.ag.get("download.downloading",t.totalItems)))}),[a,e,t]);const l=(0,N.D)(e);(0,n.useEffect)((()=>{l===E.V8.DOWNLOADING&&e===E.V8.YES&&(r.current=!1,a.say(w.ag.get("download.complete")))}),[a,l,e])})(j,x);const Q=()=>{!1===t?(a(),R(!0)):z()};return(0,n.useEffect)((()=>{!0===D&&!0===t&&(z(),R(!1))}),[t,D,z]),C===E.PQ.NO_DOWNLOAD_CAPABILITY?null:P===E.v$.DOWNLOADING_NOT_ALLOWED?r().createElement("div",{className:S},r().createElement(b.u,{label:w.ag.get("download.download")},r().createElement("button",{className:m()(d,u),role:"switch",onClick:()=>{M(!0)},"aria-label":w.ag.get("download.download"),"aria-checked":!1},r().createElement(o.a,{iconSize:l}))),k&&r().createElement("div",{className:p},r().createElement(y.E,{withTopLeftPointer:!0,horizontal:!0,onClose:()=>{M(!1)}},w.ag.get("download.upsell")))):j===E.V8.YES?r().createElement(b.u,{label:w.ag.get("download.remove")},r().createElement("button",{className:m()(d,u,I),role:"switch",onClick:T,"aria-label":w.ag.get("download.remove"),"aria-checked":!0},r().createElement(s.C,{iconSize:l}))):j===E.V8.NO?r().createElement(b.u,{label:w.ag.get("download.download")},r().createElement("button",{className:m()(d,u),role:"switch",onClick:Q,"aria-label":w.ag.get("download.download"),"aria-checked":!1},r().createElement(o.a,{iconSize:l}))):r().createElement("div",{className:m()(Z,u),role:"switch","aria-checked":!0},r().createElement(b.u,{label:w.ag.get("download.cancel")},r().createElement("button",{style:v,className:m()(d,_,u),onClick:T,"aria-label":w.ag.get("download.cancel")})),r().createElement("span",{style:v,className:m()(f,_)},r().createElement(g.e,{"aria-valuetext":w.ag.get("progress.downloading-tracks"),percentage:x.percentage,size:l})))}},34834:function(e,t,a){a.d(t,{p:function(){return u},q:function(){return c.q}});var n=a(27378),r=a.n(n),l=a(23104),c=a(98196),o=a(88319),s=a(26894),i=a(89614);const E=r().memo((({uri:e,size:t=c.q.md,className:a})=>{const[E,u]=(0,i.Z)(e),m=(0,l.I0)(),_=(0,o.o)(),S=(0,n.useCallback)((()=>{_({targetUri:e,intent:E?"remove-from-library":"add-to-library",type:"click"}),u(!E),m(E?(0,s.SS)():(0,s.kK)())}),[_,e,E,u,m]);return r().createElement(c.o,{className:a,isFollowing:E,onFollow:S,uri:e,size:t})})),u=r().memo((e=>r().createElement(E,e)))},35896:function(e,t,a){a.d(t,{O:function(){return R},K:function(){return D}});var n=a(65526),r=a.n(n),l=a(27378),c=a.n(l),o=a(60042),s=a.n(o),i=a(60244),E=a(21311),u="x-entityImage-xsmall",m="x-entityImage-small",_="x-entityImage-medium",S="x-entityImage-large",d="x-entityImage-square",I="x-entityImage-circle",Z="x-entityImage-image",f="x-entityImage-imageContainer",p="U2nmp1ADRfUihiNhFsnu",g="hWfeZMlgvzCnh_e3_wiT",w=a(64619),N=a(60291),h=a(61606),y=a(199),b=a(13262),L=a(44336);const v=({title:e,type:t,className:a})=>{const n=(e=>{switch(e){case w.p.ALBUM:return c().createElement(N.c,{className:g});case w.p.ARTIST:return c().createElement(h.a,{className:g});case w.p.SHOW:case w.p.EPISODE:return c().createElement(y.J,{className:g});case w.p.USER:return c().createElement(b.f,{className:g});case w.p.PLAYLIST:default:return c().createElement(L.U,{className:g})}})(t);return c().createElement("div",{"aria-label":e,className:s()(p,a)},n)};function O(e,t){var a=Object.keys(e);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(e);t&&(n=n.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),a.push.apply(a,n)}return a}function A(e){for(var t=1;t<arguments.length;t++){var a=null!=arguments[t]?arguments[t]:{};t%2?O(Object(a),!0).forEach((function(t){r()(e,t,a[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(a)):O(Object(a)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(a,t))}))}return e}let D;!function(e){e[e.ROUNDED_CORNERS=0]="ROUNDED_CORNERS",e[e.CIRCLE=1]="CIRCLE",e[e.SQUARE=2]="SQUARE"}(D||(D={}));const R=c().memo((({type:e,title:t,images:a=[],shape:n=D.SQUARE,size:r=E.m$.SIZE_56,className:l,onContextMenu:o=(()=>{}),onTouchStart:p=(()=>{}),onTouchEnd:g=(()=>{})})=>{const w=function(e=[]){const t=e.filter((e=>Boolean(e.width))),a=t.filter((e=>e.url&&e.width&&e.width>=E.eM[E.m$.SIZE_56])).sort(((e,t)=>e.width-t.width));return a.length?a:t}(a),N=w.length>0?w[0].url:"",h=w.map((({url:e,width:t})=>`${e} ${t/2}w, ${e} ${t}w`)).join(", "),y=e=>{switch(e){case D.SQUARE:return d;case D.CIRCLE:return I;default:return{[u]:E.pj.includes(r),[m]:E.wL.includes(r),[_]:E.VZ.includes(r),[S]:E.B_.includes(r)}}};return c().createElement("div",{className:s()(f,l),onContextMenu:o,onTouchStart:p,onTouchEnd:g,style:{width:`${E.eM[r]}px`,height:`${E.eM[r]}px`}},c().createElement(i.E,{loading:"lazy",src:N,alt:t,ariaHidden:!0,className:s()(Z,A({},y(n))),srcSet:h||void 0,testid:"entity-image"},c().createElement(v,{title:t,type:e,className:s()(A({},y(n)))})))}))},21311:function(e,t,a){let n;a.d(t,{m$:function(){return n},eM:function(){return r},pj:function(){return l},wL:function(){return c},VZ:function(){return o},B_:function(){return s}}),function(e){e[e.SIZE_48=0]="SIZE_48",e[e.SIZE_56=1]="SIZE_56",e[e.SIZE_64=2]="SIZE_64",e[e.SIZE_72=3]="SIZE_72",e[e.SIZE_80=4]="SIZE_80",e[e.SIZE_96=5]="SIZE_96",e[e.SIZE_104=6]="SIZE_104",e[e.SIZE_112=7]="SIZE_112",e[e.SIZE_120=8]="SIZE_120",e[e.SIZE_128=9]="SIZE_128",e[e.SIZE_136=10]="SIZE_136",e[e.SIZE_144=11]="SIZE_144",e[e.SIZE_152=12]="SIZE_152",e[e.SIZE_160=13]="SIZE_160",e[e.SIZE_168=14]="SIZE_168",e[e.SIZE_176=15]="SIZE_176",e[e.SIZE_184=16]="SIZE_184",e[e.SIZE_200=17]="SIZE_200",e[e.SIZE_232=18]="SIZE_232"}(n||(n={}));const r={[n.SIZE_48]:48,[n.SIZE_56]:56,[n.SIZE_64]:64,[n.SIZE_72]:72,[n.SIZE_80]:80,[n.SIZE_96]:96,[n.SIZE_104]:104,[n.SIZE_112]:112,[n.SIZE_120]:120,[n.SIZE_128]:128,[n.SIZE_136]:136,[n.SIZE_144]:144,[n.SIZE_152]:152,[n.SIZE_160]:160,[n.SIZE_168]:168,[n.SIZE_176]:176,[n.SIZE_184]:184,[n.SIZE_200]:200,[n.SIZE_232]:232},l=[n.SIZE_48,n.SIZE_56,n.SIZE_64],c=[n.SIZE_72,n.SIZE_80,n.SIZE_96,n.SIZE_104,n.SIZE_112,n.SIZE_120,n.SIZE_128],o=[n.SIZE_136,n.SIZE_144,n.SIZE_152,n.SIZE_160,n.SIZE_168,n.SIZE_176],s=[n.SIZE_184,n.SIZE_200,n.SIZE_232]},33482:function(e,t,a){let n;a.d(t,{f:function(){return n}}),function(e){e[e.LARGE=0]="LARGE",e[e.SMALL=1]="SMALL",e[e.MOBILE=2]="MOBILE"}(n||(n={}))},42294:function(e,t,a){a.d(t,{E:function(){return O},$:function(){return v}});var n=a(27378),r=a.n(n),l=a(12622),c=a(65526),o=a.n(c),s="_X9jWYPe0Xr9kEHERN_w",i="JZ1Y5NX3idYd4y1Kf4c_",E="ejEJmUTCvSIshaFcoGl1",u="l_SYn9ehV32BixCLasfz";a(23615);class m extends n.PureComponent{render(){const{ariaValueText:e,max:t,current:a}=this.props,n=t&&a?100*Math.min(1,a/t):0,l={transform:`translateX(-${100-n}%)`},c=e||`${Math.round(n)}%`;return r().createElement("div",{className:s,role:"progressbar",tabIndex:0,"aria-valuenow":a,"aria-valuemin":0,"aria-valuemax":t,"aria-valuetext":c},r().createElement("div",{className:i}),r().createElement("div",{className:E},r().createElement("div",{className:u,style:l})))}}o()(m,"defaultProps",{current:0,max:1});var _=m,S="GffRAM6QLAL9WOLJpXVc",d="TOPBCyuj7ii2LIx37z1l",I="D6T5kx_SWi_YwOIj96Zy",Z="mub26HPiMbZFJfQmv9LT",f="LyXF3bEZIp0icaNdGDPX",p="_uBjH40KFR7kg1Jn7ugu",g="_3CEwwVfhNzkoOc_bL2k",w=a(49272),N=a(35181),h=a(9807),y=a(33482),b=a(60042),L=a.n(b);let v;!function(e){e[e.LARGE=0]="LARGE",e[e.SMALL=1]="SMALL"}(v||(v={}));const O=e=>{const{resumePositionMs:t=0,releaseDate:a,isPlaying:n,fullyPlayed:c,durationMs:o,size:s=y.f.SMALL,position:i=t}=e;return r().createElement("div",{className:L()(S,{[d]:s===v.LARGE})},r().createElement(h.Dy.p,{variant:h.$e.mesto,className:I},(0,l.rL)((0,l.RX)(a))),(()=>{if(c&&!n)return r().createElement("div",{className:f},r().createElement(h.Dy.p,{variant:h.$e.mesto,className:Z},N.ag.get("episode.played")),r().createElement(w.R,{iconSize:16,className:g}));if(i>0||n){const e=Math.ceil(Math.max(o-i,0)/6e4);return r().createElement("div",{className:f},r().createElement(h.Dy.p,{variant:h.$e.mesto,className:Z},N.ag.get("episode.time_left",e)))}return r().createElement(h.Dy.p,{variant:h.$e.mesto,className:I},N.ag.get("episode.length",Math.ceil(o/6e4)))})(),!c&&i>0||n?r().createElement("div",{className:p},r().createElement(_,{current:i,max:o,isEnabled:!1})):null)}}}]);
//# sourceMappingURL=418.js.map