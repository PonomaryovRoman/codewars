# [Printer Errors](https://www.codewars.com/kata/56541980fa08ab47a0000040)

<div class="markdown prose max-w-none" id="description"><p>In a factory a printer prints labels for boxes. For one kind of boxes
the printer has to use colors which, for the sake of simplicity,
are named with letters from <code>a to m</code>. </p>
<p>The colors used by the printer are
recorded in a control string. For example a "good" control string would be
<code>aaabbbbhaijjjm</code> meaning that the printer used three times color a, four times
color b, one time color h then one time color a...</p>
<p>Sometimes there are problems: lack of colors, technical malfunction and a "bad" 
control string is produced e.g. <code>aaaxbbbbyyhwawiwjjjwwm</code> with letters not from <code>a to m</code>.</p>
<p>You have to write a function <code>printer_error</code> which given a string will return
the error rate of the printer as a <strong>string</strong> representing a rational whose numerator 
is the number of errors and the denominator the length of the control string.
Don't reduce this fraction to a simpler expression.</p>
<p>The string has a length greater or equal to one and contains only letters 
from <code>a</code>to <code>z</code>.</p>
<h4 id="examples">Examples:</h4>
<pre><code>s="aaabbbbhaijjjm"
error_printer(s) =&gt; "0/14"

s="aaaxbbbbyyhwawiwjjjwwm"
error_printer(s) =&gt; "8/22"
</code></pre>
</div>