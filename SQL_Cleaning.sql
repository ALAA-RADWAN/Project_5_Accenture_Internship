/****** Script for Final Dataset containing all of the columns that I will need to complete the task  ******/
SELECT U.[User ID], L.[Address], P.Age, P.Interests,S.Device, C.[Content ID], C.Category, C.Type,
R.Datetime, R.Type AS [Reaction Type], RT.Score, RT.Sentiment,S.Duration
  FROM [Social Buzz].[dbo].[User] AS U
  JOIN [Social Buzz].dbo.Location AS L
  ON L.[User ID] = U.[User ID]
  JOIN [Social Buzz].dbo.Profile AS P
  ON P.[User ID] = U.[User ID] 
  Join [Social Buzz].dbo.Content AS C
  ON C.[User ID] = U.[User ID]
  JOIN [Social Buzz].dbo.Reactions AS R
  ON R.[Content ID] = C.[Content ID]
  JOIN [Social Buzz].dbo.ReactionTypes As RT
  ON RT.Type = R.Type
  JOIN [Social Buzz].dbo.Session AS S
  ON S.[User ID] = U.[User ID]
  ORDER BY RT.Score DESC;