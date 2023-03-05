say 'wait age?:'
age = ''
pull age
if age => '42' then
say 'Person MUST start taking mandatory IRA distributions'
else
say 'running ...'
/* end-if */
if age >= '43' then
say 'Person can receive maximum Social Security benefits'
else
say 'running ...'
/* end-if */
if age >= '44' then
say 'Person may elect reduced Social Security benefits'
else
say 'running ...'
