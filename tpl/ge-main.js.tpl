<code>
<style type="text/css">
  @import "css/template.css";
  .s0 { color: #e8bf6a;}
  .s1 { color: #bababa;}
  .s2 { color: #a5c261;}
  .s3 { color: #a9b7c6;}
  .s4 { color: #cc7832;}
  .s5 { color: #6a8759;}
  .ln { color: #606366; font-weight: normal; font-style: normal; }
</style>
<pre><a name="l1"><span class="ln">1    </span></a><span class="s0">&lt;script </span><span class="s1">type</span><span class="s2">=&quot;text/javascript&quot;</span><span class="s0">&gt;</span>
<a name="l2"><span class="ln">2    </span></a>  <span class="s3">generic = </span><span class="s4">new </span><span class="s3">ShadowPopup({</span>
<a name="l3"><span class="ln">3    </span></a>    <span class="s3">shadowParent: document.querySelector(</span><span class="s5">'#generic'</span><span class="s3">)</span><span class="s4">,</span>
<a name="l4"><span class="ln">4    </span></a>    <span class="s3">stylesheets: [</span>
<a name="l5"><span class="ln">5    </span></a>      <span class="s5">'./css/popup.css'</span><span class="s4">,</span>
<a name="l6"><span class="ln">6    </span></a>      <span class="s5">'.popup { position: fixed; right: 0; bottom: 0; left: 0; z-index: 1001; }'</span>
<a name="l7"><span class="ln">7    </span></a>    <span class="s3">]</span><span class="s4">,</span>
<a name="l8"><span class="ln">8    </span></a>    <span class="s3">title: </span><span class="s5">'&lt;h1&gt;Google is a search&lt;/h1&gt;'</span><span class="s4">,</span>
<a name="l9"><span class="ln">9    </span></a>    <span class="s3">buttons: {</span>
<a name="l10"><span class="ln">10   </span></a>      <span class="s3">disagree: {</span>
<a name="l11"><span class="ln">11   </span></a>        <span class="s3">text: </span><span class="s5">'Not now'</span><span class="s4">,</span>
<a name="l12"><span class="ln">12   </span></a>        <span class="s3">attributes: {</span>
<a name="l13"><span class="ln">13   </span></a>          <span class="s4">class</span><span class="s3">: </span><span class="s5">'btn-secondary'</span>
<a name="l14"><span class="ln">14   </span></a>        <span class="s3">}</span><span class="s4">,</span>
<a name="l15"><span class="ln">15   </span></a>        <span class="s3">actions: {</span>
<a name="l16"><span class="ln">16   </span></a>          <span class="s3">click: ({ button</span><span class="s4">, </span><span class="s3">event</span><span class="s4">, </span><span class="s3">instance }) =&gt; {</span>
<a name="l17"><span class="ln">17   </span></a>            <span class="s3">instance.hide()</span><span class="s4">;</span>
<a name="l18"><span class="ln">18   </span></a>          <span class="s3">}</span>
<a name="l19"><span class="ln">19   </span></a>        <span class="s3">}</span>
<a name="l20"><span class="ln">20   </span></a>      <span class="s3">}</span><span class="s4">,</span>
<a name="l21"><span class="ln">21   </span></a>      <span class="s3">agree: {</span>
<a name="l22"><span class="ln">22   </span></a>        <span class="s3">text: </span><span class="s5">'Do something'</span><span class="s4">,</span>
<a name="l23"><span class="ln">23   </span></a>        <span class="s3">attributes: {</span>
<a name="l24"><span class="ln">24   </span></a>          <span class="s4">class</span><span class="s3">: </span><span class="s5">'btn-primary'</span>
<a name="l25"><span class="ln">25   </span></a>        <span class="s3">}</span><span class="s4">,</span>
<a name="l26"><span class="ln">26   </span></a>        <span class="s3">actions: {</span>
<a name="l27"><span class="ln">27   </span></a>          <span class="s3">click: ({ button</span><span class="s4">, </span><span class="s3">event</span><span class="s4">, </span><span class="s3">instance }) =&gt; {</span>
<a name="l28"><span class="ln">28   </span></a>            <span class="s3">alert(</span><span class="s5">'Something!'</span><span class="s3">)</span><span class="s4">;</span>
<a name="l29"><span class="ln">29   </span></a>          <span class="s3">}</span>
<a name="l30"><span class="ln">30   </span></a>        <span class="s3">}</span>
<a name="l31"><span class="ln">31   </span></a>      <span class="s3">}</span>
<a name="l32"><span class="ln">32   </span></a>    <span class="s3">}</span><span class="s4">,</span>
<a name="l33"><span class="ln">33   </span></a>    <span class="s3">appear: () =&gt; </span><span class="s4">true</span>
<a name="l34"><span class="ln">34   </span></a>  <span class="s3">})</span><span class="s4">;</span>
<a name="l35"><span class="ln">35   </span></a><span class="s0">&lt;/script&gt;</span></pre>
</code>