"use strict";(("undefined"!=typeof self?self:global).webpackChunkopen=("undefined"!=typeof self?self:global).webpackChunkopen||[]).push([[387],{59146:function(e,t,n){n.d(t,{$:function(){return p}});var a=n(35181),r=n(27378),l=n.n(r),o=n(97015),s=n(18291),i=n(42044),d=n(39519),u=n(73429),c=n(67831);function m(e){return e.includes("Spotify")?e:`Spotify – ${e}`}const p=({children:e})=>{let t=m(e);(e=>{const{mainLandmarkRef:t}=(0,c.Oh)(),n=(0,u.k6)(),a=(0,r.useRef)(n.length<2);a.current=n.length<2,(0,r.useEffect)((()=>{const n=t.current;n&&!a.current&&e&&(n.setAttribute("aria-label",e),n.focus())}),[e,t])})(e);const n=(0,s.Y)(d.o9)===i.PO.PLAYING,p=(0,s.Y)((e=>null==e?void 0:e.item));return p&&n&&((0,i.G_)(p)?t=[p.name,p.artists.map((e=>e.name)).join(a.ag.getSeparator())].join(" · "):(0,i.iw)(p)?t=[p.name,p.show.name].join(" · "):(0,i.k6)(p)&&(t=m(a.ag.get("ad-formats.advertisement")))),l().createElement(o.q,{defaultTitle:"Spotify",defer:!1},l().createElement("title",null,t))}},5129:function(e,t,n){n.d(t,{$:function(){return a.$}});var a=n(59146)},83965:function(e,t,n){n.r(t),n.d(t,{default:function(){return w}});var a=n(27378),r=n.n(a),l=(n(23615),n(14298)),o=n(65526),s=n.n(o),i=n(23324),d=n(35181),u=n(9085),c=n(64954);class m extends a.PureComponent{constructor(...e){super(...e),s()(this,"handleClick",(()=>{const{onLogExternalLink:e,downloadLink:t}=this.props;e(t)}))}render(){const{adsEnabled:e,downloadLink:t}=this.props;return r().createElement("section",{style:{height:"100%"}},r().createElement("div",{className:"download-page"+(e?" with-ad":"")},r().createElement("div",{className:"download-page-inner"},r().createElement("div",null,r().createElement("img",{alt:"",src:(0,u.g)("images/devices/mac.png")}),r().createElement(i.Z,{size:"medium",isCentered:!0},d.ag.get("download-page.header")),r().createElement(i.Z,{isCentered:!0,isSubheader:!0},d.ag.get("download-page.subtext")),r().createElement(c.z,{version:"primary",href:t,onClick:this.handleClick,_blank:!0},d.ag.get("download-page.button"))))))}}s()(m,"defaultProps",{adsEnabled:!1});var p=m,g=n(82734),f=n(23104),E=n(25282),h=n(86268),b=n(5129);class k extends a.PureComponent{render(){const{adsEnabled:e,onLogExternalLink:t,isQuestFeatureAvailable:n}=this.props;return r().createElement(r().Fragment,null,r().createElement(b.$,null,d.ag.get("downloadPage.page-title")),r().createElement(h.H,{color:l.jN0}),r().createElement(p,{adsEnabled:e,onLogExternalLink:t,downloadLink:"https://www.spotify.com/download",isQuestFeatureAvailable:n}))}}var w=(0,f.$j)((e=>({adsEnabled:e.session.productState&&1===parseInt(e.session.productState.ads,10),isQuestFeatureAvailable:e.features.quest&&["morpheus-qbe-1","morpheus-qbe-2"].includes(e.features.quest)})),(e=>(0,g.DE)({onLogExternalLink:E.$E},e)))(k)}}]);
//# sourceMappingURL=xpui-routes-download-page.js.map