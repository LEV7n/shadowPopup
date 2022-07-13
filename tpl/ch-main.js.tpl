<code>
<style type="text/css">
  .s0 { color: #e8bf6a;}
  .s1 { color: #bababa;}
  .s2 { color: #a5c261;}
  .s3 { color: #a9b7c6;}
  .s4 { color: #cc7832;}
  .s5 { color: #6a8759;}
  .s6 { color: #808080;}
  .s7 { color: #6897bb;}
  .ln { color: #606366; font-weight: normal; font-style: normal; }
</style>
<pre><a name="l1"><span class="ln">1    </span></a><span class="s0">&lt;script </span><span class="s1">type</span><span class="s2">=&quot;text/javascript&quot;</span><span class="s0">&gt;</span>
<a name="l2"><span class="ln">2    </span></a>  <span class="s3">change = </span><span class="s4">new </span><span class="s3">ShadowPopup({</span>
<a name="l3"><span class="ln">3    </span></a>    <span class="s3">shadowParent: document.querySelector(</span><span class="s5">'#change'</span><span class="s3">)</span><span class="s4">,</span>
<a name="l4"><span class="ln">4    </span></a>    <span class="s3">stylesheets: [</span>
<a name="l5"><span class="ln">5    </span></a>      <span class="s5">'./css/popup.css'</span><span class="s4">,</span>
<a name="l6"><span class="ln">6    </span></a>      <span class="s5">'.popup { position: fixed; right: 0; bottom: 0; left: 0; z-index: 1001; }'</span>
<a name="l7"><span class="ln">7    </span></a>    <span class="s3">]</span><span class="s4">,</span>
<a name="l8"><span class="ln">8    </span></a>    <span class="s3">title: </span><span class="s5">'&lt;h1 id=&quot;title&quot;&gt;This title will be changed&lt;/h1&gt;'</span><span class="s4">,</span>
<a name="l9"><span class="ln">9    </span></a>    <span class="s3">content: </span><span class="s5">'&lt;p id=&quot;content&quot;&gt;This descriptions will be changed&lt;/p&gt;'</span><span class="s4">,</span>
<a name="l10"><span class="ln">10   </span></a>    <span class="s3">buttons: {</span>
<a name="l11"><span class="ln">11   </span></a>      <span class="s3">disagree: {</span>
<a name="l12"><span class="ln">12   </span></a>        <span class="s3">text: </span><span class="s5">'It will be changed too'</span><span class="s4">,</span>
<a name="l13"><span class="ln">13   </span></a>        <span class="s3">attributes: {</span>
<a name="l14"><span class="ln">14   </span></a>          <span class="s4">class</span><span class="s3">: </span><span class="s5">'btn-secondary'</span>
<a name="l15"><span class="ln">15   </span></a>        <span class="s3">}</span><span class="s4">,</span>
<a name="l16"><span class="ln">16   </span></a>        <span class="s3">actions: {</span>
<a name="l17"><span class="ln">17   </span></a>          <span class="s3">click: ({ button</span><span class="s4">, </span><span class="s3">event</span><span class="s4">, </span><span class="s3">instance }) =&gt; {</span>
<a name="l18"><span class="ln">18   </span></a>            <span class="s3">instance.hide()</span><span class="s4">;</span>
<a name="l19"><span class="ln">19   </span></a>          <span class="s3">}</span>
<a name="l20"><span class="ln">20   </span></a>        <span class="s3">}</span>
<a name="l21"><span class="ln">21   </span></a>      <span class="s3">}</span><span class="s4">,</span>
<a name="l22"><span class="ln">22   </span></a>      <span class="s3">agree: {</span>
<a name="l23"><span class="ln">23   </span></a>        <span class="s3">text: </span><span class="s5">'Change it!'</span><span class="s4">,</span>
<a name="l24"><span class="ln">24   </span></a>        <span class="s3">attributes: {</span>
<a name="l25"><span class="ln">25   </span></a>          <span class="s4">class</span><span class="s3">: </span><span class="s5">'btn-primary'</span>
<a name="l26"><span class="ln">26   </span></a>        <span class="s3">}</span><span class="s4">,</span>
<a name="l27"><span class="ln">27   </span></a>        <span class="s3">actions: {</span>
<a name="l28"><span class="ln">28   </span></a>          <span class="s3">click: ({ button</span><span class="s4">, </span><span class="s3">event</span><span class="s4">, </span><span class="s3">instance }) =&gt; {</span>
<a name="l29"><span class="ln">29   </span></a>            <span class="s3">instance.options.changeIt(instance)</span><span class="s4">;</span>
<a name="l30"><span class="ln">30   </span></a>          <span class="s3">}</span>
<a name="l31"><span class="ln">31   </span></a>        <span class="s3">}</span>
<a name="l32"><span class="ln">32   </span></a>      <span class="s3">}</span>
<a name="l33"><span class="ln">33   </span></a>    <span class="s3">}</span><span class="s4">,</span>
<a name="l34"><span class="ln">34   </span></a>    <span class="s3">changeIt: (instance) =&gt; {</span>
<a name="l35"><span class="ln">35   </span></a>      <span class="s6">/*Generate random text*/</span>
<a name="l36"><span class="ln">36   </span></a>      <span class="s4">const </span><span class="s3">random = (length = </span><span class="s7">8</span><span class="s3">) =&gt; {</span>
<a name="l37"><span class="ln">37   </span></a>          <span class="s4">return </span><span class="s3">Math.random().toString(</span><span class="s7">16</span><span class="s3">).substr(</span><span class="s7">2</span><span class="s4">, </span><span class="s3">length)</span><span class="s4">;</span>
<a name="l38"><span class="ln">38   </span></a>        <span class="s3">}</span><span class="s4">,</span>
<a name="l39"><span class="ln">39   </span></a>        <span class="s3">strings = {</span>
<a name="l40"><span class="ln">40   </span></a>          <span class="s3">title: random(</span><span class="s7">32</span><span class="s3">)</span><span class="s4">,</span>
<a name="l41"><span class="ln">41   </span></a>          <span class="s3">content: random(</span><span class="s7">64</span><span class="s3">)</span><span class="s4">,</span>
<a name="l42"><span class="ln">42   </span></a>          <span class="s3">disagree: random(</span><span class="s7">16</span><span class="s3">)</span>
<a name="l43"><span class="ln">43   </span></a>        <span class="s3">}</span>
<a name="l44"><span class="ln">44   </span></a>
<a name="l45"><span class="ln">45   </span></a>      <span class="s3">instance.popup.querySelectorAll(</span><span class="s5">'*[id]'</span><span class="s3">).forEach(el =&gt; {</span>
<a name="l46"><span class="ln">46   </span></a>        <span class="s3">el.textContent = strings[el.id] || el.textContent</span><span class="s4">;</span>
<a name="l47"><span class="ln">47   </span></a>      <span class="s3">})</span><span class="s4">;</span>
<a name="l48"><span class="ln">48   </span></a>    <span class="s3">}</span><span class="s4">,</span>
<a name="l49"><span class="ln">49   </span></a>    <span class="s3">appear: (instance) =&gt; {</span>
<a name="l50"><span class="ln">50   </span></a>      <span class="s4">return true;</span>
<a name="l51"><span class="ln">51   </span></a>    <span class="s3">}</span>
<a name="l52"><span class="ln">52   </span></a>  <span class="s3">})</span><span class="s4">;</span>
<a name="l53"><span class="ln">53   </span></a><span class="s0">&lt;/script&gt;</span></pre>
</code>