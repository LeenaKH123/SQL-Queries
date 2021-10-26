Select tc.DESCRIPTION as TC, 
wr.COD_WORK_REQUEST as WORK_REQUEST,   
wr.cod_type as REQUEST_TYPE,
wr.cod_type as REQUEST_STATUS, 
ss.NISS as SPN,
fa.id_field_activity as SO_NUMBER, 
t.DESCRIPTION as WOType, 
t2.DESCRIPTION as Priority,
s.DESCRIPTION as status, 
p.id_work_group as Crew,
p.NAME as Responsible,
pf.REFERENCE as Account,
r.full_name as Customer,
r.TELEPHONE1 as phone,
a.address as Address,
pt.NAME_TYPE as PROPERTY_TYPE,
a.NAS_CODE as NAS,
ge_gov.ENTITY_NAME as GOVERNORATE,
GE_BLOCK.ENTITY_NAME as BLOCK,
fa.generation_date as REGISTRATION_DATE,
fa.update_date as MODIFICATION_DATE,
fa.request_execution_date as F_ESTM_REST,
fa.scheduling_date as ScheduleDate,
fa.maxim_execution_date as MaxExecutionDate,
fa.resolution_date as ResolutionDate,
fa.id_contractor as COD_CTRAT,
fa.cod_request_unit as Unit,
fa.cod_process_develop as Process,
fa.cod_motive_develop as Motive,
fa.commentary as Commentary,
seg.DESCRIPTION as segment
from GCGT_WO_FIELD_ACTIVITY fa
INNER JOIN GCGT_WO_TECHNICAL_CENTER tc on fa.ID_CENTER = tc.ID_CENTER
INNER JOIN GCGT_NS_FIELD_ACTIV fa2 on fa2.id_field_activity = fa.id_field_activity
INNER JOIN GCGT_NS_WORK_REQUEST wr on wr.ID_WORK_REQUEST = fa2.ID_WORK_REQUEST
INNER JOIN GCCOM_SECTOR_SUPPLY ss on ss.ID_SECTOR_SUPPLY = fa.ID_SECTOR_SUPPLY
INNER JOIN GCGT_WO_TIPOLOGY t on fa.COD_TIPOLOGY = t.COD_TIPOLOGY
INNER JOIN GCGT_WO_TIPOLOGY_PRIORITY t2 on fa.COD_PRIORITY = t2.COD_PRIORITY
INNER JOIN GCGT_WO_ACTIVITY_STATUS s on s.COD_DEVELOP = fa.COD_STATUS_DEVELOP
INNER JOIN GCGT_WO_PERSONNEL p on p.ID_PERSONNEL = fa.ID_PERSONNEL
INNER JOIN GCCOM_PAYMENT_FORM pf on fa.ID_PAYMENT_FORM = pf.ID_PAYMENT_FORM
INNER JOIN GCCD_RELATIONSHIP r on pf.ID_CUSTOMER = r.ID_RELATIONSHIP
INNER JOIN GCCOM_ADDRESS a on fa.ID_ADDRESS = a.ID_ADDRESS
INNER JOIN  GCCOM_GEOGRAPHIC_ENTITY GE_BLOCK on GE_BLOCK.ID_GEO_ENTITY = a.ID_GEO_ENTITY
INNER JOIN GCCOM_GEOGRAPHIC_ENTITY ge_gov ON GE_BLOCK.ID_GEO_ENTITY_P = ge_gov.ID_GEO_ENTITY
INNER JOIN GCCOM_GEOGRAPHIC_ENTITY ge_c ON ge_gov.ID_GEO_ENTITY_P = ge_c.ID_GEO_ENTITY
INNER JOIN GCCOM_SUPPLY sup on fa.ID_SUPPLY = sup.ID_SUPPLY
INNER JOIN GCGT_NS_PREMISE pr on sup.ID_PREMISE = pr.ID_PREMISE
INNER JOIN GCGT_NS_PREMISE_TYPE pt on pr.COD_TYPE_DEVELOP = pt.COD_DEVELOP
INNER JOIN GCCOM_GEOGRAPHIC_ENTITY g on a.ID_GEO_ENTITY = g.ID_GEO_ENTITY
LEFT OUTER JOIN GCGT_WO_ACTIVITY_APPOINTMENT aap on fa.id_field_activity = aap.id_field_activity
LEFT OUTER JOIN GCGT_WO_APPOINTMENT app on app.ID_APPOINTMENT = aap.ID_APPOINTMENT
INNER JOIN GCCOM_SEGMENT seg on fa.ID_SECTOR_SUPPLY = ss.ID_SECTOR_SUPPLY and ss.ID_BILLING_CLASS = seg.ID_SEGMENT
WHERE (ge_gov.ENTITY_NAME = '$P!{workorderGovernorate}' OR '( Todos )'='$P!{workorderGovernorate}')
AND (GE_BLOCK.ENTITY_NAME = '$P!{block}' OR '( Todos )'='$P!{block}')
AND (tc.DESCRIPTION = '$P!{wo_technicalcenter}' OR '( Todos )'='$P!{wo_technicalcenter}')
AND (t.DESCRIPTION = '$P!{wo_type}' OR '( Todos )'='$P!{wo_type}')
AND (s.DESCRIPTION = '$P!{wo_status}' OR '( Todos )'='$P!{wo_status}')
AND (fa.generation_date >'$P!{Date_From}' )
AND (fa.update_date < '$P!{Date_To}')
AND (fa.cod_request_unit = '$P!{wo_unit}' OR '( Todos )'='$P!{wo_unit}')
AND (fa.cod_process_develop = '$P!{wo_process}' OR '( Todos )'='$P!{wo_process}')
AND (fa.cod_motive_develop = '$P!{wo_motive}' OR '( Todos )'='$P!{wo_motive}')