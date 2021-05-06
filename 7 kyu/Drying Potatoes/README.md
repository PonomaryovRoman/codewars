# [Drying Potatoes](https://www.codewars.com/kata/58ce8725c835848ad6000007)

<div class="markdown prose max-w-none" id="description"><p>All we eat is water and dry matter.</p>
<p>John bought potatoes: their weight is 100 kilograms. Potatoes contain water and dry matter. </p>
<p>The water content is 99 percent of the total weight. He thinks they are too wet and puts them in an oven - at low temperature - for them to lose some water. </p>
<p>At the output the water content is only 98%.</p>
<p>What is the total weight in kilograms (water content plus dry matter) coming out of the oven?</p>
<p>He finds 50 kilograms and he thinks he made a mistake: "So much weight lost for such a small change in water content!"</p>
<p>Can you help him? </p>
<p>Write function <code>potatoes</code> with </p>
<ul>
<li>int parameter <code>p0</code> - initial percent of water- </li>
<li>int parameter <code>w0</code> - initial weight - </li>
<li>int parameter <code>p1</code> - final percent of water -</li>
</ul>
<p><code>potatoes</code>should return the final weight coming out of the oven <code>w1</code> truncated as an int.</p>
<h4 id="example">Example:</h4>
<p><code>potatoes(99, 100, 98) --&gt; 50</code></p>
</div>