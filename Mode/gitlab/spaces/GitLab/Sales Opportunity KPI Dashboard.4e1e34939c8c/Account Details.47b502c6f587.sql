SELECT A.*,
       S.*,
       R.RECORD_TYPE_NAME
FROM ANALYTICS.TMURPHY_SCRATCH.F_OPPORTUNITY A
LEFT JOIN ANALYTICS.ANALYTICS.SFDC_RECORD_TYPE R
  ON A.RECORD_TYPE_ID = R.RECORD_TYPE_ID
INNER JOIN analytics.analytics_staging.sfdc_opportunitystage S
  ON A.OPPORTUNITY_STAGE_ID = S.STAGE_ID
  WHERE S.MAPPED_STAGE != 'Unmapped'
    AND 1=1 LIMIT 10000