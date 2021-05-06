# [Over The Road](https://www.codewars.com/kata/5f0ed36164f2bc00283aed07)

<div class="markdown prose max-w-none" id="description"><h3 id="task">Task</h3>
<p>You've just moved into a perfectly straight street with exactly <code>n</code> identical houses on either side of the road. Naturally, you would like to find out the house number of the people on the other side of the street. The street looks something like this:</p>
<hr>
<h3 id="street">Street</h3>
<pre><code>1|   |6
3|   |4
5|   |2
</code></pre>
<p>Evens increase on the right; odds decrease on the left. House numbers start at <code>1</code> and increase without gaps.
When <code>n = 3</code>, <code>1</code> is opposite <code>6</code>, <code>3</code> opposite <code>4</code>, and <code>5</code> opposite <code>2</code>. </p>
<hr>
<h3 id="example">Example</h3>
<p>Given your house number <code>address</code> and length of street <code>n</code>, give the house number on the opposite side of the street.</p>
<pre><code class="language-javascript"><span class="cm-variable">overTheRoad</span>(<span class="cm-variable">address</span>, <span class="cm-variable">n</span>)
<span class="cm-variable">overTheRoad</span>(<span class="cm-number">1</span>, <span class="cm-number">3</span>) <span class="cm-operator">=</span> <span class="cm-number">6</span>
<span class="cm-variable">overTheRoad</span>(<span class="cm-number">3</span>, <span class="cm-number">3</span>) <span class="cm-operator">=</span> <span class="cm-number">4</span>
<span class="cm-variable">overTheRoad</span>(<span class="cm-number">2</span>, <span class="cm-number">3</span>) <span class="cm-operator">=</span> <span class="cm-number">5</span>
<span class="cm-variable">overTheRoad</span>(<span class="cm-number">3</span>, <span class="cm-number">5</span>) <span class="cm-operator">=</span> <span class="cm-number">8</span>
</code></pre>
<pre style="display: none;"><code class="language-CoffeeScript">overTheRoad(address, n)
overTheRoad(1, 3) = 6
overTheRoad(3, 3) = 4
overTheRoad(2, 3) = 5
overTheRoad(3, 5) = 8
</code></pre>
<pre style="display: none;"><code class="language-TypeScript">overTheRoad(address, n)
overTheRoad(1, 3) = 6
overTheRoad(3, 3) = 4
overTheRoad(2, 3) = 5
overTheRoad(3, 5) = 8
</code></pre>
<pre style="display: none;"><code class="language-c"><span class="cm-type">size_t</span> <span class="cm-def">over_the_road</span>(<span class="cm-type">size_t</span> <span class="cm-variable">address</span>, <span class="cm-type">size_t</span> <span class="cm-variable">n</span>);
<span class="cm-variable">over_the_road</span>(<span class="cm-number">1</span>, <span class="cm-number">3</span>) <span class="cm-operator">==</span> <span class="cm-number">6</span>
<span class="cm-variable">over_the_road</span>(<span class="cm-number">3</span>, <span class="cm-number">3</span>) <span class="cm-operator">==</span> <span class="cm-number">4</span>
<span class="cm-variable">over_the_road</span>(<span class="cm-number">2</span>, <span class="cm-number">3</span>) <span class="cm-operator">==</span> <span class="cm-number">5</span>
<span class="cm-variable">over_the_road</span>(<span class="cm-number">3</span>, <span class="cm-number">5</span>) <span class="cm-operator">==</span> <span class="cm-number">8</span>
</code></pre>
<pre style="display: none;"><code class="language-crystal"><span class="cm-variable">over_the_road</span>(<span class="cm-variable">address</span>, <span class="cm-variable">n</span>)
<span class="cm-variable">over_the_road</span>(<span class="cm-number">1</span>, <span class="cm-number">3</span>) <span class="cm-operator">=</span> <span class="cm-number">6</span>
<span class="cm-variable">over_the_road</span>(<span class="cm-number">3</span>, <span class="cm-number">3</span>) <span class="cm-operator">=</span> <span class="cm-number">4</span>
<span class="cm-variable">over_the_road</span>(<span class="cm-number">2</span>, <span class="cm-number">3</span>) <span class="cm-operator">=</span> <span class="cm-number">5</span>
<span class="cm-variable">over_the_road</span>(<span class="cm-number">3</span>, <span class="cm-number">5</span>) <span class="cm-operator">=</span> <span class="cm-number">8</span>
</code></pre>
<pre style="display: none;"><code class="language-python"><span class="cm-variable">over_the_road</span>(<span class="cm-variable">address</span>, <span class="cm-variable">n</span>)
<span class="cm-variable">over_the_road</span>(<span class="cm-number">1</span>, <span class="cm-number">3</span>) <span class="cm-operator">=</span> <span class="cm-number">6</span>
<span class="cm-variable">over_the_road</span>(<span class="cm-number">3</span>, <span class="cm-number">3</span>) <span class="cm-operator">=</span> <span class="cm-number">4</span>
<span class="cm-variable">over_the_road</span>(<span class="cm-number">2</span>, <span class="cm-number">3</span>) <span class="cm-operator">=</span> <span class="cm-number">5</span>
<span class="cm-variable">over_the_road</span>(<span class="cm-number">3</span>, <span class="cm-number">5</span>) <span class="cm-operator">=</span> <span class="cm-number">8</span>
</code></pre>
<pre style="display: none;"><code class="language-julia"><span class="cm-variable">over_the_road</span>(<span class="cm-variable">address</span>, <span class="cm-variable">n</span>)
<span class="cm-variable">over_the_road</span>(<span class="cm-number">1</span>, <span class="cm-number">3</span>) <span class="cm-operator">=</span> <span class="cm-number">6</span>
<span class="cm-variable">over_the_road</span>(<span class="cm-number">3</span>, <span class="cm-number">3</span>) <span class="cm-operator">=</span> <span class="cm-number">4</span>
<span class="cm-variable">over_the_road</span>(<span class="cm-number">2</span>, <span class="cm-number">3</span>) <span class="cm-operator">=</span> <span class="cm-number">5</span>
<span class="cm-variable">over_the_road</span>(<span class="cm-number">3</span>, <span class="cm-number">5</span>) <span class="cm-operator">=</span> <span class="cm-number">8</span>
</code></pre>
<pre style="display: none;"><code class="language-ruby"><span class="cm-variable">over_the_road</span>(<span class="cm-variable">address</span>, <span class="cm-variable">n</span>)
<span class="cm-variable">over_the_road</span>(<span class="cm-number">1</span>, <span class="cm-number">3</span>) <span class="cm-operator">=</span> <span class="cm-number">6</span>
<span class="cm-variable">over_the_road</span>(<span class="cm-number">3</span>, <span class="cm-number">3</span>) <span class="cm-operator">=</span> <span class="cm-number">4</span>
<span class="cm-variable">over_the_road</span>(<span class="cm-number">2</span>, <span class="cm-number">3</span>) <span class="cm-operator">=</span> <span class="cm-number">5</span>
<span class="cm-variable">over_the_road</span>(<span class="cm-number">3</span>, <span class="cm-number">5</span>) <span class="cm-operator">=</span> <span class="cm-number">8</span>
</code></pre>
<pre style="display: none;"><code class="language-php"><span class="cm-variable">overTheRoad</span>(<span class="cm-variable">address</span>, <span class="cm-variable">n</span>)
<span class="cm-variable">overTheRoad</span>(<span class="cm-number">1</span>, <span class="cm-number">3</span>) <span class="cm-operator">=</span> <span class="cm-number">6</span>
<span class="cm-variable">overTheRoad</span>(<span class="cm-number">3</span>, <span class="cm-number">3</span>) <span class="cm-operator">=</span> <span class="cm-number">4</span>
<span class="cm-variable">overTheRoad</span>(<span class="cm-number">2</span>, <span class="cm-number">3</span>) <span class="cm-operator">=</span> <span class="cm-number">5</span>
<span class="cm-variable">overTheRoad</span>(<span class="cm-number">3</span>, <span class="cm-number">5</span>) <span class="cm-operator">=</span> <span class="cm-number">8</span>
</code></pre>
<pre style="display: none;"><code class="language-prolog"><span class="cm-atom">over_the_road</span><span class="cm-paren">(</span><span class="cm-variable">Address</span><span class="cm-paren">,</span><span class="cm-comment"> </span><span class="cm-variable">N</span><span class="cm-paren">,</span><span class="cm-comment"> </span><span class="cm-variable">HouseNo</span><span class="cm-paren">)</span>
<span class="cm-atom">over_the_road</span><span class="cm-paren">(</span><span class="cm-number">1</span><span class="cm-paren">,</span><span class="cm-comment"> </span><span class="cm-number">3</span><span class="cm-paren">,</span><span class="cm-comment"> </span><span class="cm-number">6</span><span class="cm-paren">)</span><span class="cm-graphic">.</span>
<span class="cm-atom">over_the_road</span><span class="cm-paren">(</span><span class="cm-number">3</span><span class="cm-paren">,</span><span class="cm-comment"> </span><span class="cm-number">3</span><span class="cm-paren">,</span><span class="cm-comment"> </span><span class="cm-number">4</span><span class="cm-paren">)</span><span class="cm-graphic">.</span>
<span class="cm-atom">over_the_road</span><span class="cm-paren">(</span><span class="cm-number">2</span><span class="cm-paren">,</span><span class="cm-comment"> </span><span class="cm-number">3</span><span class="cm-paren">,</span><span class="cm-comment"> </span><span class="cm-number">5</span><span class="cm-paren">)</span><span class="cm-graphic">.</span>
<span class="cm-atom">over_the_road</span><span class="cm-paren">(</span><span class="cm-number">3</span><span class="cm-paren">,</span><span class="cm-comment"> </span><span class="cm-number">5</span><span class="cm-paren">,</span><span class="cm-comment"> </span><span class="cm-number">8</span><span class="cm-paren">)</span><span class="cm-graphic">.</span>
</code></pre>
<pre style="display: none;"><code class="language-cfml"><span class="cm-variable">overTheRoad</span>(<span class="cm-variable">address</span>, <span class="cm-variable">n</span>)
<span class="cm-variable">overTheRoad</span>( <span class="cm-number">1</span>, <span class="cm-number">3</span> ) <span class="cm-operator">=</span> <span class="cm-number">6</span>
<span class="cm-variable">overTheRoad</span>( <span class="cm-number">3</span>, <span class="cm-number">3</span> ) <span class="cm-operator">=</span> <span class="cm-number">4</span>
<span class="cm-variable">overTheRoad</span>( <span class="cm-number">2</span>, <span class="cm-number">3</span> ) <span class="cm-operator">=</span> <span class="cm-number">5</span>
<span class="cm-variable">overTheRoad</span>( <span class="cm-number">3</span>, <span class="cm-number">5</span> ) <span class="cm-operator">=</span> <span class="cm-number">8</span>
</code></pre>
<pre style="display: none;"><code class="language-java"><span class="cm-variable">CodeWars</span>.<span class="cm-variable">overTheRoad</span>(<span class="cm-type">long</span> <span class="cm-variable">address</span>, <span class="cm-type">long</span> <span class="cm-variable">n</span>)
<span class="cm-variable">CodeWars</span>.<span class="cm-variable">overTheRoad</span>(<span class="cm-number">1</span>, <span class="cm-number">3</span>) <span class="cm-operator">=</span> <span class="cm-number">6</span>
<span class="cm-variable">CodeWars</span>.<span class="cm-variable">overTheRoad</span>(<span class="cm-number">3</span>, <span class="cm-number">3</span>) <span class="cm-operator">=</span> <span class="cm-number">4</span>
<span class="cm-variable">CodeWars</span>.<span class="cm-variable">overTheRoad</span>(<span class="cm-number">2</span>, <span class="cm-number">3</span>) <span class="cm-operator">=</span> <span class="cm-number">5</span>
<span class="cm-variable">CodeWars</span>.<span class="cm-variable">overTheRoad</span>(<span class="cm-number">3</span>, <span class="cm-number">5</span>) <span class="cm-operator">=</span> <span class="cm-number">8</span>
</code></pre>
<pre style="display: none;"><code class="language-PowerShell">overTheRoad $address $n
overTheRoad 1 3 = 6
overTheRoad 3 3 = 4
overTheRoad 2 3 = 5
overTheRoad 3 5 = 8
</code></pre>
<pre style="display: none;"><code class="language-shell">over_the_road args: [ address, street ]
over_the_road: [ <span class="cm-number">1</span>, <span class="cm-number">3</span> ] <span class="cm-operator">=</span> <span class="cm-number">6</span>
over_the_road: [ <span class="cm-number">3</span>, <span class="cm-number">3</span> ] <span class="cm-operator">=</span> <span class="cm-number">4</span>
over_the_road: [ <span class="cm-number">2</span>, <span class="cm-number">3</span> ] <span class="cm-operator">=</span> <span class="cm-number">5</span>
over_the_road: [ <span class="cm-number">3</span>, <span class="cm-number">5</span> ] <span class="cm-operator">=</span> <span class="cm-number">8</span>
</code></pre>
<pre style="display: none;"><code class="language-dart"><span class="cm-builtin">int</span> <span class="cm-variable">overTheRoad</span>(<span class="cm-builtin">int</span> <span class="cm-variable">address</span>, <span class="cm-builtin">int</span> <span class="cm-variable">n</span>)
<span class="cm-variable">overTheRoad</span>(<span class="cm-number">1</span>, <span class="cm-number">3</span>) <span class="cm-operator">=</span> <span class="cm-number">6</span>
<span class="cm-variable">overTheRoad</span>(<span class="cm-number">3</span>, <span class="cm-number">3</span>) <span class="cm-operator">=</span> <span class="cm-number">4</span>
<span class="cm-variable">overTheRoad</span>(<span class="cm-number">2</span>, <span class="cm-number">3</span>) <span class="cm-operator">=</span> <span class="cm-number">5</span>
<span class="cm-variable">overTheRoad</span>(<span class="cm-number">3</span>, <span class="cm-number">5</span>) <span class="cm-operator">=</span> <span class="cm-number">8</span>
</code></pre>
<pre style="display: none;"><code class="language-vb"><span class="cm-variable">OverTheRoad</span>(<span class="cm-keyword">ByVal</span> <span class="cm-variable">address</span> <span class="cm-keyword">as</span> <span class="cm-keyword">Long</span>, <span class="cm-keyword">ByVal</span> <span class="cm-variable">n</span> <span class="cm-keyword">as</span> <span class="cm-keyword">Long</span>) <span class="cm-keyword">as</span> <span class="cm-keyword">Long</span>
<span class="cm-variable">OverTheRoad</span>(<span class="cm-number">1</span>, <span class="cm-number">3</span>) = <span class="cm-number">6</span>
<span class="cm-variable">OverTheRoad</span>(<span class="cm-number">3</span>, <span class="cm-number">3</span>) = <span class="cm-number">4</span>
<span class="cm-variable">OverTheRoad</span>(<span class="cm-number">2</span>, <span class="cm-number">3</span>) = <span class="cm-number">5</span>
<span class="cm-variable">OverTheRoad</span>(<span class="cm-number">3</span>, <span class="cm-number">5</span>) = <span class="cm-number">8</span>
</code></pre>
<pre style="display: none;"><code class="language-csharp"><span class="cm-variable">CodeWars</span>.<span class="cm-variable">overTheRoad</span>(<span class="cm-type">long</span> <span class="cm-variable">address</span>, <span class="cm-type">long</span> <span class="cm-variable">n</span>)
<span class="cm-variable">CodeWars</span>.<span class="cm-variable">overTheRoad</span>(<span class="cm-number">1</span>, <span class="cm-number">3</span>) <span class="cm-operator">=</span> <span class="cm-number">6</span>
<span class="cm-variable">CodeWars</span>.<span class="cm-variable">overTheRoad</span>(<span class="cm-number">3</span>, <span class="cm-number">3</span>) <span class="cm-operator">=</span> <span class="cm-number">4</span>
<span class="cm-variable">CodeWars</span>.<span class="cm-variable">overTheRoad</span>(<span class="cm-number">2</span>, <span class="cm-number">3</span>) <span class="cm-operator">=</span> <span class="cm-number">5</span>
<span class="cm-variable">CodeWars</span>.<span class="cm-variable">overTheRoad</span>(<span class="cm-number">3</span>, <span class="cm-number">5</span>) <span class="cm-operator">=</span> <span class="cm-number">8</span>
</code></pre>
<pre style="display: none;"><code class="language-cpp"><span class="cm-variable">over_the_road</span>(<span class="cm-type">long</span> <span class="cm-type">long</span> <span class="cm-variable">address</span>, <span class="cm-type">long</span> <span class="cm-variable">n</span>);
<span class="cm-variable">over_the_road</span>(<span class="cm-number">1</span>, <span class="cm-number">3</span>) <span class="cm-operator">=</span> <span class="cm-number">6</span>
<span class="cm-variable">over_the_road</span>(<span class="cm-number">3</span>, <span class="cm-number">3</span>) <span class="cm-operator">=</span> <span class="cm-number">4</span>
<span class="cm-variable">over_the_road</span>(<span class="cm-number">2</span>, <span class="cm-number">3</span>) <span class="cm-operator">=</span> <span class="cm-number">5</span>
<span class="cm-variable">over_the_road</span>(<span class="cm-number">3</span>, <span class="cm-number">5</span>) <span class="cm-operator">=</span> <span class="cm-number">8</span>
</code></pre>
<pre style="display: none;"><code class="language-rust"><span class="cm-variable">over_the_road</span>(<span class="cm-variable">address</span>: <span class="cm-atom">u64</span>, <span class="cm-variable">n</span>: <span class="cm-atom">u64</span>) <span class="cm-operator">-&gt;</span> <span class="cm-atom">u64</span>
<span class="cm-variable">over_the_road</span>(<span class="cm-number">1</span>, <span class="cm-number">3</span>) <span class="cm-operator">==</span> <span class="cm-number">6</span>
<span class="cm-variable">over_the_road</span>(<span class="cm-number">3</span>, <span class="cm-number">3</span>) <span class="cm-operator">==</span> <span class="cm-number">4</span>
<span class="cm-variable">over_the_road</span>(<span class="cm-number">2</span>, <span class="cm-number">3</span>) <span class="cm-operator">==</span> <span class="cm-number">5</span>
<span class="cm-variable">over_the_road</span>(<span class="cm-number">3</span>, <span class="cm-number">5</span>) <span class="cm-operator">==</span> <span class="cm-number">8</span>
</code></pre>
<h2 id="note-about-errors">Note about errors</h2>
<p>If you are timing out, running out of memory, or get any kind of "error", read on.
Both n and address could get upto 500 billion with over 200 random tests. If you try to store the addresses of 500 billion houses in a list then you will run out of memory and the tests will crash. This is not a kata problem so please don't post an issue. Similarly if the tests don't complete within 12 seconds then you also fail. </p>
<p>To solve this, you need to think of a way to do the kata without making massive lists or huge for loops. Read the discourse for some inspiration :)</p>
</div>