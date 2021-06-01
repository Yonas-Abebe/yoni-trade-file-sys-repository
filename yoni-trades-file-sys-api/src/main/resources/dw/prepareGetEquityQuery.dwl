%dw 2.0
output application/json
---
"select top " ++  (attributes.queryParams.limit default p("db.limit.equity")) ++  
" * from dbo.equity " ++ " where 1=1 " ++
 (if (attributes.queryParams.exchange != null )" and exchange = '" ++ attributes.queryParams.exchange ++ "'" else "") ++
 (if (attributes.queryParams.symbol != null )" and symbol  = '"  ++ attributes.queryParams.symbol ++  "'"  else "") ++
 (if (attributes.queryParams.operation != null )" and operation = '" ++  attributes.queryParams.operation ++ "'" else "") ++ 
 " order by createdDate desc "