# [Simple Fun #2: Circle of Numbers](https://www.codewars.com/kata/58841cb52a077503c4000015/train/swift)

<div class="markdown prose max-w-none" id="description"><h1 id="task">Task</h1>
<p>Consider integer numbers from 0 to n - 1 written down along the circle in such a way that the distance between any two neighbouring numbers is equal (note that 0 and n - 1 are neighbouring, too).</p>
<p> Given <code>n</code> and <code>firstNumber</code>/<code>first_number</code>, find the number which is written in the radially opposite position to firstNumber.</p>
<h1 id="example">Example</h1>
<p> For n = 10 and firstNumber = 2, the output should be</p>
<pre style="display: none;"><code class="language-elm"><span class="cm-def">circleOfNumbers</span> <span class="cm-variable">n</span> <span class="cm-variable">firstNumber</span> <span class="cm-keyword">==</span> <span class="cm-number">7</span>
</code></pre>
<pre style="display: none;"><code class="language-javascript"><span class="cm-variable">circleOfNumbers</span>(<span class="cm-variable">n</span>, <span class="cm-variable">firstNumber</span>) <span class="cm-operator">===</span> <span class="cm-number">7</span>
</code></pre>
<pre style="display: none;"><code class="language-lua"><span class="cm-variable">circleOfNumbers</span>(<span class="cm-variable">n</span>, <span class="cm-variable">firstNumber</span>) == <span class="cm-number">7</span>
</code></pre>
<pre><code class="language-swift"><span class="cm-variable">circleOfNumbers</span><span class="cm-punctuation">(</span><span class="cm-variable">n</span><span class="cm-punctuation">,</span> <span class="cm-variable">firstNumber</span><span class="cm-punctuation">)</span> <span class="cm-operator">=</span><span class="cm-operator">=</span> <span class="cm-number">7</span>
</code></pre>
<pre style="display: none;"><code class="language-java"><span class="cm-variable">CircleOfNumbers</span>.<span class="cm-variable">circleOfNumbers</span>(<span class="cm-variable">n</span>, <span class="cm-variable">firstNumber</span>) <span class="cm-operator">==</span> <span class="cm-number">7</span>
</code></pre>
<pre style="display: none;"><code class="language-typescript"><span class="cm-variable">circleOfNumbers</span>(<span class="cm-variable">n</span>, <span class="cm-variable">firstNumber</span>) <span class="cm-operator">===</span> <span class="cm-number">7</span>
</code></pre>
<pre style="display: none;"><code class="language-shell">run_shell(args: [n, first_number]) <span class="cm-operator">=</span><span class="cm-operator">=</span> <span class="cm-number">7</span>
</code></pre>
<pre style="display: none;"><code class="language-racket"><span class="cm-bracket">(</span><span class="cm-variable">circle-of-numbers</span> <span class="cm-variable">n</span> <span class="cm-variable">first-number</span><span class="cm-bracket">)</span> <span class="cm-comment">; -&gt; 7</span>
</code></pre>
<pre style="display: none;"><code class="language-coffeescript"><span class="cm-variable">circleOfNumbers</span><span class="cm-punctuation">(</span><span class="cm-variable">n</span><span class="cm-punctuation">,</span> <span class="cm-variable">firstNumber</span><span class="cm-punctuation">)</span> <span class="cm-operator">is</span> <span class="cm-number">7</span>
</code></pre>
<pre style="display: none;"><code class="language-sql"><span class="cm-comment">-- run sql with n and first_number =&gt; 7</span>
</code></pre>
<pre style="display: none;"><code class="language-dart"><span class="cm-variable">circleOfNumbers</span>(<span class="cm-variable">n</span>, <span class="cm-variable">firstNumber</span>) <span class="cm-operator">==</span> <span class="cm-number">7</span>
</code></pre>
<pre style="display: none;"><code class="language-go"><span class="cm-variable">circleOfNumbers</span>(<span class="cm-variable">n</span>, <span class="cm-variable">firstNumber</span>) <span class="cm-operator">==</span> <span class="cm-number">7</span>
</code></pre>
<pre style="display: none;"><code class="language-elixir"><span class="cm-tag">CircleNumbers</span><span class="cm-operator">.</span><span class="cm-property">circle_of_numbers</span>(<span class="cm-variable">n</span>, <span class="cm-variable">firstNumber</span>) <span class="cm-operator">=</span><span class="cm-operator">=</span> <span class="cm-number">7</span>
</code></pre>
<pre style="display: none;"><code class="language-factor"><span class="cm-variable">n</span> <span class="cm-variable">firstNumber</span> <span class="cm-variable">circle-of-numbers</span> <span class="cm-comment">! 7</span>
</code></pre>
<pre style="display: none;"><code class="language-julia"><span class="cm-variable">circleofnumbers</span>(<span class="cm-variable">n</span>, <span class="cm-variable">firstNumber</span>) <span class="cm-operator">==</span> <span class="cm-number">7</span>
</code></pre>
<pre style="display: none;"><code class="language-r"><span class="cm-variable">circle_of_numbers</span>(<span class="cm-variable">n</span>, <span class="cm-variable">firstNumber</span>) <span class="cm-operator">==</span> <span class="cm-number">7</span>
</code></pre>
<pre style="display: none;"><code class="language-reason"><span class="cm-variable">circleOfNumbers</span>(<span class="cm-variable">n</span>, <span class="cm-variable">firstNumber</span>) <span class="cm-operator">==</span> <span class="cm-number">7</span>
</code></pre>
<pre style="display: none;"><code class="language-cpp"><span class="cm-variable">circleOfNumbers</span>(<span class="cm-variable">n</span>, <span class="cm-variable">firstNumber</span>); <span class="cm-comment">// --&gt; 7</span>
</code></pre>
<pre style="display: none;"><code class="language-php"><span class="cm-variable">circle_of_numbers</span>(<span class="cm-variable-2">$n</span>, <span class="cm-variable-2">$first_number</span>); <span class="cm-comment">// -&gt; 7</span>
</code></pre>
<pre style="display: none;"><code class="language-c"><span class="cm-variable">circle_of_numbers</span>(<span class="cm-variable">n</span>, <span class="cm-variable">first_number</span>) <span class="cm-comment">// -&gt; 7</span>
</code></pre>
<pre style="display: none;"><code class="language-clojure"><span class="cm-bracket">(</span><span class="cm-builtin">circle-of-numbers</span> <span class="cm-variable">n</span> <span class="cm-variable">first-number</span><span class="cm-bracket">)</span> <span class="cm-comment">; -&gt; 7</span>
</code></pre>
<p><img alt="" src="https://codefightsuserpics.s3.amazonaws.com/tasks/circleOfNumbers/img/example.png?_tm=1476003938167"></p>
<h1 id="inputoutput">Input/Output</h1>
<ul>
<li><p><code>[input]</code> integer <code>n</code></p>
<p>A positive even integer.</p>
<p>Constraints: 4 ≤ n ≤ 1000.</p>
</li>
<li><p><code>[input]</code> integer <code>firstNumber</code>/<code>first_number</code></p>
<p>Constraints: 0 ≤ firstNumber ≤ n - 1</p>
</li>
<li><p><code>[output]</code> an integer</p>
</li>
</ul>
</div>