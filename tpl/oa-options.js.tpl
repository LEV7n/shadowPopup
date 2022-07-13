<code>
<style type="text/css">
  @import "css/template.css";
  .s0 { color: #a9b7c6;}
  .s1 { color: #6a8759;}
  .s2 { color: #cc7832;}
  .s3 { color: #6897bb;}
  .ln { color: #606366; font-weight: normal; font-style: normal; }
</style>
<pre><a name="l1"><span class="ln">1    </span></a><span class="s0">options = {</span>
<a name="l2"><span class="ln">2    </span></a>  <span class="s0">shadowParent: document.querySelector(</span><span class="s1">'#only-android'</span><span class="s0">)</span><span class="s2">,</span>
<a name="l3"><span class="ln">3    </span></a>  <span class="s0">stylesheets: [</span>
<a name="l4"><span class="ln">4    </span></a>    <span class="s1">'./css/popup.css'</span><span class="s2">,</span>
<a name="l5"><span class="ln">5    </span></a>    <span class="s1">'.popup { position: fixed; right: 0; bottom: 0; left: 0; z-index: 1001; }'</span>
<a name="l6"><span class="ln">6    </span></a>  <span class="s0">]</span><span class="s2">,</span>
<a name="l7"><span class="ln">7    </span></a>  <span class="s0">title: </span><span class="s1">'&lt;h1&gt;Google is a search&lt;/h1&gt;'</span><span class="s2">,</span>
<a name="l8"><span class="ln">8    </span></a>  <span class="s0">content: </span><span class="s1">'&lt;p&gt;Use it anywhere&lt;/p&gt;'</span><span class="s2">,</span>
<a name="l9"><span class="ln">9    </span></a>  <span class="s0">buttons: {</span>
<a name="l10"><span class="ln">10   </span></a>    <span class="s0">disagree: {</span>
<a name="l11"><span class="ln">11   </span></a>      <span class="s0">text: </span><span class="s1">'Not now'</span><span class="s2">,</span>
<a name="l12"><span class="ln">12   </span></a>      <span class="s0">attributes: {</span>
<a name="l13"><span class="ln">13   </span></a>        <span class="s2">class</span><span class="s0">: </span><span class="s1">'btn-secondary'</span>
<a name="l14"><span class="ln">14   </span></a>      <span class="s0">}</span><span class="s2">,</span>
<a name="l15"><span class="ln">15   </span></a>      <span class="s0">actions: {</span>
<a name="l16"><span class="ln">16   </span></a>        <span class="s0">click: ({ button</span><span class="s2">, </span><span class="s0">event</span><span class="s2">, </span><span class="s0">instance }) =&gt; {</span>
<a name="l17"><span class="ln">17   </span></a>          <span class="s0">localStorage.setItem(</span><span class="s1">'android-app'</span><span class="s2">, </span><span class="s0">instance.options.addDays(</span><span class="s3">14</span><span class="s0">))</span><span class="s2">;</span>
<a name="l18"><span class="ln">18   </span></a>          <span class="s0">instance.hide()</span><span class="s2">;</span>
<a name="l19"><span class="ln">19   </span></a>        <span class="s0">}</span>
<a name="l20"><span class="ln">20   </span></a>      <span class="s0">}</span>
<a name="l21"><span class="ln">21   </span></a>    <span class="s0">}</span><span class="s2">,</span>
<a name="l22"><span class="ln">22   </span></a>    <span class="s0">agree: {</span>
<a name="l23"><span class="ln">23   </span></a>      <span class="s0">type: </span><span class="s1">'a'</span><span class="s2">,</span>
<a name="l24"><span class="ln">24   </span></a>      <span class="s0">text: </span><span class="s1">'Go to site'</span><span class="s2">,</span>
<a name="l25"><span class="ln">25   </span></a>      <span class="s0">attributes: {</span>
<a name="l26"><span class="ln">26   </span></a>        <span class="s2">class</span><span class="s0">: </span><span class="s1">'btn-primary'</span><span class="s2">,</span>
<a name="l27"><span class="ln">27   </span></a>        <span class="s0">href: </span><span class="s1">'https://google.com'</span><span class="s2">,</span>
<a name="l28"><span class="ln">28   </span></a>        <span class="s0">target: </span><span class="s1">'_blank'</span>
<a name="l29"><span class="ln">29   </span></a>      <span class="s0">}</span><span class="s2">,</span>
<a name="l30"><span class="ln">30   </span></a>      <span class="s0">actions: {</span>
<a name="l31"><span class="ln">31   </span></a>        <span class="s0">click: ({ button</span><span class="s2">, </span><span class="s0">event</span><span class="s2">, </span><span class="s0">instance }) =&gt; {</span>
<a name="l32"><span class="ln">32   </span></a>          <span class="s0">instance.hide()</span><span class="s2">;</span>
<a name="l33"><span class="ln">33   </span></a>        <span class="s0">}</span>
<a name="l34"><span class="ln">34   </span></a>      <span class="s0">}</span>
<a name="l35"><span class="ln">35   </span></a>    <span class="s0">}</span>
<a name="l36"><span class="ln">36   </span></a>  <span class="s0">}</span><span class="s2">,</span>
<a name="l37"><span class="ln">37   </span></a>  <span class="s0">addDays: (days) =&gt; {</span>
<a name="l38"><span class="ln">38   </span></a>    <span class="s2">let </span><span class="s0">date = </span><span class="s2">new </span><span class="s0">Date()</span><span class="s2">;</span>
<a name="l39"><span class="ln">39   </span></a>    <span class="s0">date.setDate(date.getDate() + days)</span><span class="s2">;</span>
<a name="l40"><span class="ln">40   </span></a>    <span class="s2">return </span><span class="s0">date.getTime()</span><span class="s2">;</span>
<a name="l41"><span class="ln">41   </span></a>  <span class="s0">}</span><span class="s2">,</span>
<a name="l42"><span class="ln">42   </span></a>  <span class="s0">appear: (instance) =&gt; {</span>
<a name="l43"><span class="ln">43   </span></a>    <span class="s2">const </span><span class="s0">state = </span><span class="s2">new </span><span class="s0">Date() &gt; localStorage.getItem(</span><span class="s1">'android-app'</span><span class="s0">)</span><span class="s2">,</span>
<a name="l44"><span class="ln">44   </span></a>          <span class="s0">ua = </span><span class="s2">new </span><span class="s0">MobileDetect(window.navigator.userAgent)</span><span class="s2">, </span><span class="s0">isAndroid = ua.is(</span><span class="s1">'Android'</span><span class="s0">)</span><span class="s2">,</span>
<a name="l45"><span class="ln">45   </span></a>          <span class="s0">link = document.querySelector(</span><span class="s1">'#show-only-android'</span><span class="s0">)</span><span class="s2">;</span>
<a name="l46"><span class="ln">46   </span></a>
<a name="l47"><span class="ln">47   </span></a>    <span class="s0">link.style.display = (!isAndroid ? </span><span class="s1">'' </span><span class="s0">: </span><span class="s1">'none'</span><span class="s0">)</span><span class="s2">;</span>
<a name="l48"><span class="ln">48   </span></a>    <span class="s0">link.addEventListener(</span><span class="s1">'click'</span><span class="s2">, </span><span class="s0">(e) =&gt; {</span>
<a name="l49"><span class="ln">49   </span></a>      <span class="s0">e.preventDefault()</span><span class="s2">;</span>
<a name="l50"><span class="ln">50   </span></a>      <span class="s0">instance.show()</span><span class="s2">;</span>
<a name="l51"><span class="ln">51   </span></a>    <span class="s0">})</span><span class="s2">;</span>
<a name="l52"><span class="ln">52   </span></a>
<a name="l53"><span class="ln">53   </span></a>    <span class="s2">return </span><span class="s0">isAndroid &amp;&amp; state</span><span class="s2">;</span>
<a name="l54"><span class="ln">54   </span></a>  <span class="s0">}</span>
<a name="l55"><span class="ln">55   </span></a><span class="s0">}</span></pre>
</code>