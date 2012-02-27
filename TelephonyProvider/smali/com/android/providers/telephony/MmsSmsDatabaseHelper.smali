.class public Lcom/android/providers/telephony/MmsSmsDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MmsSmsDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/telephony/MmsSmsDatabaseHelper$MmsFileObserver;,
        Lcom/android/providers/telephony/MmsSmsDatabaseHelper$MmsDirObserver2;,
        Lcom/android/providers/telephony/MmsSmsDatabaseHelper$MmsDirObserver;,
        Lcom/android/providers/telephony/MmsSmsDatabaseHelper$LowStorageMonitor;
    }
.end annotation


# static fields
.field static final DATABASE_NAME:Ljava/lang/String; = "mmssms.db"

.field static final DATABASE_VERSION:I = 0x52

.field private static final DEBUG:Z = true

.field private static final DELETE_NAMELOOKUP_THREADID_ON_DELETE_THREAD:Ljava/lang/String; = "DELETE FROM name_lookup WHERE thread_id = old._id; "

.field private static final HTCMSG_UPDATE_HTCTHREAD_ALL_COLUMN_BY_DATE_ON_UPDATE:Ljava/lang/String; = "BEGIN UPDATE htcthreads SET latest_date = (   SELECT date    FROM (     SELECT date      FROM threads WHERE recipient_ids = new.recipient_ids      UNION      SELECT date      FROM htcmsgs     WHERE htcthread_id =        (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))   WHERE recipient_ids = new.recipient_ids    ORDER BY date DESC LIMIT 1) WHERE recipient_ids = new.recipient_ids;  UPDATE htcthreads SET snippet =    (SELECT snippet     FROM       (SELECT date, snippet FROM threads WHERE recipient_ids = new.recipient_ids        UNION        SELECT date, NULL AS snippet FROM htcmsgs WHERE htcthread_id =          (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))     WHERE recipient_ids = new.recipient_ids ORDER BY date DESC LIMIT 1)   WHERE recipient_ids = new.recipient_ids;  UPDATE htcthreads SET snippet_cs =    (SELECT snippet_cs     FROM       (SELECT date, snippet_cs FROM threads WHERE recipient_ids = new.recipient_ids        UNION        SELECT date, NULL AS snippet_cs FROM htcmsgs WHERE htcthread_id =          (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))     WHERE recipient_ids = new.recipient_ids ORDER BY date DESC LIMIT 1)   WHERE recipient_ids = new.recipient_ids;  UPDATE htcthreads SET priority =    (SELECT priority     FROM       (SELECT date, priority FROM threads WHERE recipient_ids = new.recipient_ids        UNION        SELECT date, NULL AS priority FROM htcmsgs WHERE htcthread_id =          (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))     WHERE recipient_ids = new.recipient_ids ORDER BY date DESC LIMIT 1)   WHERE recipient_ids = new.recipient_ids;  UPDATE htcthreads SET msg_type =    (SELECT msg_type     FROM       (SELECT date, NULL AS msg_type FROM threads WHERE recipient_ids = new.recipient_ids        UNION        SELECT date, msg_type FROM htcmsgs WHERE htcthread_id =          (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))     WHERE recipient_ids = new.recipient_ids ORDER BY date DESC LIMIT 1)   WHERE recipient_ids = new.recipient_ids;  UPDATE htcthreads SET vvm_ptime =    (SELECT ptime     FROM       (SELECT date, NULL AS ptime FROM threads WHERE recipient_ids = new.recipient_ids        UNION        SELECT date, ptime FROM htcmsgs WHERE htcthread_id =          (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))     WHERE recipient_ids = new.recipient_ids ORDER BY date DESC LIMIT 1)   WHERE recipient_ids = new.recipient_ids;  UPDATE htcthreads SET is_private =    (SELECT is_private     FROM       (SELECT date, NULL AS is_private FROM threads WHERE recipient_ids = new.recipient_ids        UNION        SELECT date, is_private FROM htcmsgs WHERE htcthread_id =          (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))     WHERE recipient_ids = new.recipient_ids ORDER BY date DESC LIMIT 1)   WHERE recipient_ids = new.recipient_ids;  UPDATE htcthreads SET is_urgent =    (SELECT is_urgent     FROM       (SELECT date, NULL AS is_urgent FROM threads WHERE recipient_ids = new.recipient_ids        UNION        SELECT date, is_urgent FROM htcmsgs WHERE htcthread_id =          (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))     WHERE recipient_ids = new.recipient_ids ORDER BY date DESC LIMIT 1)   WHERE recipient_ids = new.recipient_ids;  UPDATE htcthreads SET thread_id = new._id WHERE recipient_ids = new.recipient_ids; UPDATE htcthreads SET p_message_count =    ((SELECT message_count FROM threads WHERE recipient_ids= new.recipient_ids) +     (SELECT COUNT(_id) FROM htcmsgs        WHERE htcthread_id =          (SELECT _id FROM htcthreads where recipient_ids = new.recipient_ids))) WHERE recipient_ids = new.recipient_ids;  UPDATE htcthreads SET p_unread_count =    ((SELECT unread_count FROM threads WHERE recipient_ids= new.recipient_ids) +     (SELECT COUNT(*) FROM htcmsgs      WHERE read = 0 AND htcthread_id =          (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))) WHERE recipient_ids = new.recipient_ids;  UPDATE htcthreads SET p_read =  CASE (   ((CASE (SELECT read FROM threads WHERE recipient_ids = new.recipient_ids)        WHEN 0 THEN 1        ELSE 0        END) +      (SELECT COUNT(*) FROM htcmsgs WHERE read = 0 AND htcthread_id =         (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))))    WHEN 0 THEN 1   ELSE 0 END WHERE recipient_ids = new.recipient_ids;END;"

.field private static final HTCMSG_UPDATE_HTCTHREAD_COLUMNS_BY_DATE_ON_UPDATE:Ljava/lang/String; = "BEGIN  UPDATE htcthreads SET latest_date = (   SELECT date    FROM (     SELECT date      FROM threads WHERE _id =        (SELECT thread_id FROM htcthreads WHERE _id = new.htcthread_id)      UNION      SELECT date      FROM htcmsgs     WHERE htcthread_id = new.htcthread_id)   ORDER BY date DESC LIMIT 1)   WHERE _id = new.htcthread_id;  UPDATE htcthreads SET msg_type =    (SELECT msg_type     FROM       (SELECT date, msg_type FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = new.htcthread_id;  UPDATE htcthreads SET vvm_ptime =    (SELECT ptime     FROM       (SELECT date, ptime FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = new.htcthread_id;  UPDATE htcthreads SET is_private =    (SELECT is_private     FROM       (SELECT date, is_private FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)   WHERE _id = new.htcthread_id;  UPDATE htcthreads SET is_urgent =    (SELECT is_urgent     FROM       (SELECT date, is_urgent FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = new.htcthread_id;  UPDATE htcthreads SET p_message_count = (   SELECT COUNT(_id) FROM htcmsgs    WHERE htcthread_id = new.htcthread_id) WHERE _id = new.htcthread_id;  UPDATE htcthreads SET p_unread_count = (   SELECT COUNT(*) FROM htcmsgs    WHERE read = 0 AND htcthread_id = new.htcthread_id)  WHERE _id = new.htcthread_id;  UPDATE htcthreads SET p_read =  CASE (       SELECT COUNT(*) FROM htcmsgs WHERE read = 0 AND htcthread_id = new.htcthread_id)    WHEN 0 THEN 1   ELSE 0 END WHERE _id = new.htcthread_id; END; "

.field private static MmsDBFile:Ljava/lang/String; = null

.field private static MmsDBFolder:Ljava/lang/String; = null

.field private static MmsDBFolder2:Ljava/lang/String; = null

.field private static final PDU_UPDATE_THREAD_CONSTRAINTS:Ljava/lang/String; = "  WHEN new.m_type=132    OR new.m_type=130    OR new.m_type=128 "

.field private static final PDU_UPDATE_THREAD_DATE_SNIPPET_COUNT_BY_DATE_ON_UPDATE:Ljava/lang/String; = "BEGIN  UPDATE threads SET    date = (strftime(\'%s\',\'now\') * 1000),     snippet = new.sub,     snippet_cs = new.sub_cs,  priority = new.pri  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3        AND htc_category = 0) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND htc_category = 0        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128))       WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET unread_count =     (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND type = 1            AND htc_category = 0             AND thread_id = threads._id) +     (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND (m_type = 130            OR m_type = 132)             AND msg_box = 1            AND htc_category = 0             AND thread_id = threads._id)  WHERE threads._id = new.thread_id;   UPDATE threads SET snippet =    (SELECT snippet FROM     (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128          AND htc_category=0      UNION SELECT date, body AS snippet, thread_id FROM sms        WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET snippet_cs =    (SELECT snippet_cs FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET date =    (SELECT date FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id; END;"

.field private static final PDU_UPDATE_THREAD_DATE_SNIPPET_COUNT_ON_UPDATE:Ljava/lang/String; = "BEGIN  UPDATE threads SET    date = (strftime(\'%s\',\'now\') * 1000),     snippet = new.sub,     snippet_cs = new.sub_cs,  priority = new.pri  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3        AND htc_category = 0) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND htc_category = 0        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128))       WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET unread_count =     (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND type = 1            AND htc_category = 0             AND thread_id = threads._id) +     (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND (m_type = 130            OR m_type = 132)             AND msg_box = 1            AND htc_category = 0             AND thread_id = threads._id)  WHERE threads._id = new.thread_id; END;"

.field private static final PDU_UPDATE_THREAD_READ_BODY:Ljava/lang/String; = "  UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128))       WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; "

.field private static final SMS_UPDATE_THREAD_DATE_SNIPPET_COUNT_BY_DATE_ON_UPDATE:Ljava/lang/String; = "BEGIN  UPDATE threads SET    date = new.date,     snippet = new.body,     snippet_cs = 0  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3        AND htc_category = 0) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND htc_category = 0        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id            AND htc_category = 0) +         (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND htc_category = 0            AND (m_type=132              OR m_type=130)            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET unread_count =     (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND type = 1            AND htc_category = 0             AND thread_id = threads._id) +     (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND (m_type = 130            OR m_type = 132)             AND msg_box = 1            AND htc_category = 0             AND thread_id = threads._id)  WHERE threads._id = new.thread_id;   UPDATE threads SET snippet =    (SELECT snippet FROM     (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128          AND htc_category=0      UNION SELECT date, body AS snippet, thread_id FROM sms        WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET snippet_cs =    (SELECT snippet_cs FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET date =    (SELECT date FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id; END;"

.field private static final SMS_UPDATE_THREAD_DATE_SNIPPET_COUNT_ON_UPDATE:Ljava/lang/String; = "BEGIN  UPDATE threads SET    date = new.date,     snippet = new.body,     snippet_cs = 0  WHERE threads._id = new.thread_id    AND new.htc_category = 0;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3        AND htc_category = 0) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND htc_category = 0        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id            AND htc_category = 0) +         (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND htc_category = 0            AND (m_type=132              OR m_type=130)            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET unread_count =     (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND type = 1            AND htc_category = 0             AND thread_id = threads._id) +     (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND (m_type = 130            OR m_type = 132)             AND msg_box = 1            AND htc_category = 0             AND thread_id = threads._id)  WHERE threads._id = new.thread_id; END;"

.field private static final SMS_UPDATE_THREAD_READ_BODY:Ljava/lang/String; = "  UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id            AND htc_category = 0) +         (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND htc_category = 0            AND (m_type=132              OR m_type=130)            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; "

.field private static final TAG:Ljava/lang/String; = "MmsSmsDatabaseHelper"

.field private static final THREAD_UPDATE_HTCTHREAD_COLUMNS_BY_DATE_ON_INSERT:Ljava/lang/String; = "BEGIN UPDATE htcthreads SET thread_id = new._id WHERE recipient_ids = new.recipient_ids; UPDATE htcthreads SET latest_date = (   SELECT date    FROM (     SELECT date      FROM threads WHERE recipient_ids = new.recipient_ids      UNION      SELECT date      FROM htcmsgs     WHERE htcthread_id =        (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))   WHERE recipient_ids = new.recipient_ids    ORDER BY date DESC LIMIT 1)  WHERE recipient_ids = new.recipient_ids; END;"

.field private static final THREAD_UPDATE_HTCTHREAD_COLUMNS_BY_DATE_ON_UPDATE:Ljava/lang/String; = "BEGIN UPDATE htcthreads SET latest_date = (   SELECT date    FROM (     SELECT date      FROM threads WHERE recipient_ids = new.recipient_ids      UNION      SELECT date      FROM htcmsgs     WHERE htcthread_id =        (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))   WHERE recipient_ids = new.recipient_ids    ORDER BY date DESC LIMIT 1)  WHERE recipient_ids = new.recipient_ids; END;"

.field private static final UPDATE_HTCTHREAD_DATE_SNIPPET_SNIPPET_CS_ON_UPDATE_HTCMSG:Ljava/lang/String; = " UPDATE htcthreads SET latest_date = (   SELECT date    FROM (     SELECT date      FROM threads WHERE _id =        (SELECT thread_id FROM htcthreads WHERE _id = new.htcthread_id)      UNION      SELECT date      FROM htcmsgs     WHERE htcthread_id = new.htcthread_id)   ORDER BY date DESC LIMIT 1);  UPDATE htcthreads SET snippet =    (SELECT snippet     FROM       (SELECT date, snippet FROM threads WHERE _id =          (SELECT thread_id FROM htcthreads WHERE _id = new.htcthread_id)        UNION        SELECT date, NULL AS snippet FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1);  UPDATE htcthreads SET snippet_cs =    (SELECT snippet_cs     FROM       (SELECT date, snippet_cs FROM threads WHERE _id =          (SELECT thread_id FROM htcthreads WHERE _id = new.htcthread_id)        UNION        SELECT date, NULL AS snippet_cs FROM htcmsgs WHERE htcthread_id = new.htcthread_id)     ORDER BY date DESC LIMIT 1);  UPDATE htcthreads SET priority =    (SELECT priority     FROM       (SELECT date, priority FROM threads WHERE _id =          (SELECT thread_id FROM htcthreads WHERE _id = new.htcthread_id)        UNION        SELECT date, NULL AS priority FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1); "

.field private static final UPDATE_HTCTHREAD_DATE_SNIPPET_SNIPPET_CS_ON_UPDATE_THREAD:Ljava/lang/String; = " UPDATE htcthreads SET latest_date = (   SELECT date    FROM (     SELECT date      FROM threads WHERE recipient_ids = new.recipient_ids      UNION      SELECT date      FROM htcmsgs     WHERE htcthread_id =        (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))   WHERE recipient_ids = new.recipient_ids    ORDER BY date DESC LIMIT 1) WHERE recipient_ids = new.recipient_ids;  UPDATE htcthreads SET snippet =    (SELECT snippet     FROM       (SELECT date, snippet FROM threads WHERE recipient_ids = new.recipient_ids        UNION        SELECT date, NULL AS snippet FROM htcmsgs WHERE htcthread_id =          (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))     WHERE recipient_ids = new.recipient_ids ORDER BY date DESC LIMIT 1)   WHERE recipient_ids = new.recipient_ids;  UPDATE htcthreads SET snippet_cs =    (SELECT snippet_cs     FROM       (SELECT date, snippet_cs FROM threads WHERE recipient_ids = new.recipient_ids        UNION        SELECT date, NULL AS snippet_cs FROM htcmsgs WHERE htcthread_id =          (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))     WHERE recipient_ids = new.recipient_ids ORDER BY date DESC LIMIT 1)   WHERE recipient_ids = new.recipient_ids;  UPDATE htcthreads SET priority =    (SELECT priority     FROM       (SELECT date, priority FROM threads WHERE recipient_ids = new.recipient_ids        UNION        SELECT date, NULL AS priority FROM htcmsgs WHERE htcthread_id =          (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))     WHERE recipient_ids = new.recipient_ids ORDER BY date DESC LIMIT 1)   WHERE recipient_ids = new.recipient_ids; "

.field private static final UPDATE_HTCTHREAD_LATEST_DATE_ON_DELETE_HTCMSG:Ljava/lang/String; = " UPDATE htcthreads SET latest_date = (   SELECT date    FROM (     SELECT date      FROM threads WHERE _id =        (SELECT thread_id FROM htcthreads WHERE _id = old.htcthread_id)      UNION      SELECT date      FROM htcmsgs     WHERE htcthread_id = old.htcthread_id)   ORDER BY date DESC LIMIT 1)   WHERE _id = old.htcthread_id;  DELETE FROM htcthreads WHERE latest_date IS NULL; "

.field private static final UPDATE_HTCTHREAD_LATEST_DATE_ON_DELETE_THREAD:Ljava/lang/String; = " UPDATE htcthreads SET latest_date = (   SELECT date    FROM (     SELECT date      FROM htcmsgs     WHERE htcthread_id =        (SELECT _id FROM htcthreads WHERE recipient_ids = old.recipient_ids))   WHERE recipient_ids = old.recipient_ids    ORDER BY date DESC LIMIT 1)  WHERE recipient_ids = old.recipient_ids; DELETE FROM htcthreads WHERE latest_date IS NULL; "

.field private static final UPDATE_HTCTHREAD_LATEST_DATE_ON_UPDATE_HTCMSG:Ljava/lang/String; = " UPDATE htcthreads SET latest_date = (   SELECT date    FROM (     SELECT date      FROM threads WHERE _id =        (SELECT thread_id FROM htcthreads WHERE _id = new.htcthread_id)      UNION      SELECT date      FROM htcmsgs     WHERE htcthread_id = new.htcthread_id)   ORDER BY date DESC LIMIT 1)   WHERE _id = new.htcthread_id; "

.field private static final UPDATE_HTCTHREAD_LATEST_DATE_ON_UPDATE_THREAD:Ljava/lang/String; = " UPDATE htcthreads SET latest_date = (   SELECT date    FROM (     SELECT date      FROM threads WHERE recipient_ids = new.recipient_ids      UNION      SELECT date      FROM htcmsgs     WHERE htcthread_id =        (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))   WHERE recipient_ids = new.recipient_ids    ORDER BY date DESC LIMIT 1)  WHERE recipient_ids = new.recipient_ids; "

.field private static final UPDATE_HTCTHREAD_MESSAGE_COUNT_UNREAD_COUNT_ON_DELETE_HTCMSG:Ljava/lang/String; = " UPDATE htcthreads SET p_message_count = (   SELECT COUNT(_id) FROM htcmsgs    WHERE htcthread_id = old.htcthread_id) WHERE _id = old.htcthread_id;  UPDATE htcthreads SET p_unread_count = (   SELECT COUNT(*) FROM htcmsgs    WHERE read = 0 AND htcthread_id = old.htcthread_id)  WHERE _id = old.htcthread_id; "

.field private static final UPDATE_HTCTHREAD_MESSAGE_COUNT_UNREAD_COUNT_ON_NEW_HTCMSG:Ljava/lang/String; = " UPDATE htcthreads SET p_message_count = (   SELECT COUNT(_id) FROM htcmsgs    WHERE htcthread_id = new.htcthread_id) WHERE _id = new.htcthread_id;  UPDATE htcthreads SET p_unread_count = (   SELECT COUNT(*) FROM htcmsgs    WHERE read = 0 AND htcthread_id = new.htcthread_id)  WHERE _id = new.htcthread_id; "

.field private static final UPDATE_HTCTHREAD_MESSAGE_COUNT_UNREAD_COUNT_ON_NEW_THREAD:Ljava/lang/String; = " UPDATE htcthreads SET p_message_count =    ((SELECT message_count FROM threads WHERE recipient_ids= new.recipient_ids) +     (SELECT COUNT(_id) FROM htcmsgs        WHERE htcthread_id =          (SELECT _id FROM htcthreads where recipient_ids = new.recipient_ids))) WHERE recipient_ids = new.recipient_ids;  UPDATE htcthreads SET p_unread_count =    ((SELECT unread_count FROM threads WHERE recipient_ids= new.recipient_ids) +     (SELECT COUNT(*) FROM htcmsgs      WHERE read = 0 AND htcthread_id =          (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))) WHERE recipient_ids = new.recipient_ids; "

.field private static final UPDATE_HTCTHREAD_MSGTYPE_PTIME_PRIVATE_URGENT_ON_DELETE_HTCMSG:Ljava/lang/String; = " UPDATE htcthreads SET msg_type =    (SELECT msg_type     FROM       (SELECT date, msg_type FROM htcmsgs WHERE htcthread_id = old.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = old.htcthread_id;  UPDATE htcthreads SET vvm_ptime =    (SELECT ptime     FROM       (SELECT date, ptime FROM htcmsgs WHERE htcthread_id = old.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = old.htcthread_id;  UPDATE htcthreads SET is_private =    (SELECT is_private     FROM       (SELECT date, is_private FROM htcmsgs WHERE htcthread_id = old.htcthread_id)    ORDER BY date DESC LIMIT 1)   WHERE _id = old.htcthread_id;  UPDATE htcthreads SET is_urgent =    (SELECT is_urgent     FROM       (SELECT date, is_urgent FROM htcmsgs WHERE htcthread_id = old.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = old.htcthread_id; "

.field private static final UPDATE_HTCTHREAD_MSGTYPE_PTIME_PRIVATE_URGENT_ON_UPDATE_HTCMSG:Ljava/lang/String; = " UPDATE htcthreads SET msg_type =    (SELECT msg_type     FROM       (SELECT date, msg_type FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = new.htcthread_id;  UPDATE htcthreads SET vvm_ptime =    (SELECT ptime     FROM       (SELECT date, ptime FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = new.htcthread_id;  UPDATE htcthreads SET is_private =    (SELECT is_private     FROM       (SELECT date, is_private FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)   WHERE _id = new.htcthread_id;  UPDATE htcthreads SET is_urgent =    (SELECT is_urgent     FROM       (SELECT date, is_urgent FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = new.htcthread_id; "

.field private static final UPDATE_HTCTHREAD_MSGTYPE_PTIME_PRIVATE_URGENT_ON_UPDATE_THREAD:Ljava/lang/String; = " UPDATE htcthreads SET msg_type =    (SELECT msg_type     FROM       (SELECT date, NULL AS msg_type FROM threads WHERE recipient_ids = new.recipient_ids        UNION        SELECT date, msg_type FROM htcmsgs WHERE htcthread_id =          (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))     WHERE recipient_ids = new.recipient_ids ORDER BY date DESC LIMIT 1)   WHERE recipient_ids = new.recipient_ids;  UPDATE htcthreads SET vvm_ptime =    (SELECT ptime     FROM       (SELECT date, NULL AS ptime FROM threads WHERE recipient_ids = new.recipient_ids        UNION        SELECT date, ptime FROM htcmsgs WHERE htcthread_id =          (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))     WHERE recipient_ids = new.recipient_ids ORDER BY date DESC LIMIT 1)   WHERE recipient_ids = new.recipient_ids;  UPDATE htcthreads SET is_private =    (SELECT is_private     FROM       (SELECT date, NULL AS is_private FROM threads WHERE recipient_ids = new.recipient_ids        UNION        SELECT date, is_private FROM htcmsgs WHERE htcthread_id =          (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))     WHERE recipient_ids = new.recipient_ids ORDER BY date DESC LIMIT 1)   WHERE recipient_ids = new.recipient_ids;  UPDATE htcthreads SET is_urgent =    (SELECT is_urgent     FROM       (SELECT date, NULL AS is_urgent FROM threads WHERE recipient_ids = new.recipient_ids        UNION        SELECT date, is_urgent FROM htcmsgs WHERE htcthread_id =          (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))     WHERE recipient_ids = new.recipient_ids ORDER BY date DESC LIMIT 1)   WHERE recipient_ids = new.recipient_ids; "

.field private static final UPDATE_HTCTHREAD_READ_ON_DELETE_HTCMSG:Ljava/lang/String; = " UPDATE htcthreads SET p_read =  CASE (       SELECT COUNT(*) FROM htcmsgs WHERE read = 0 AND htcthread_id = old.htcthread_id)    WHEN 0 THEN 1   ELSE 0 END WHERE _id = old.htcthread_id; "

.field private static final UPDATE_HTCTHREAD_READ_ON_UPDATE_HTCMSG:Ljava/lang/String; = " UPDATE htcthreads SET p_read =  CASE (       SELECT COUNT(*) FROM htcmsgs WHERE read = 0 AND htcthread_id = new.htcthread_id)    WHEN 0 THEN 1   ELSE 0 END WHERE _id = new.htcthread_id; "

.field private static final UPDATE_HTCTHREAD_READ_ON_UPDATE_THREAD:Ljava/lang/String; = " UPDATE htcthreads SET p_read =  CASE (   ((CASE (SELECT read FROM threads WHERE recipient_ids = new.recipient_ids)        WHEN 0 THEN 1        ELSE 0        END) +      (SELECT COUNT(*) FROM htcmsgs WHERE read = 0 AND htcthread_id =         (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))))    WHEN 0 THEN 1   ELSE 0 END WHERE recipient_ids = new.recipient_ids;"

.field private static final UPDATE_HTCTHREAD_THREADID_ON_DELETE_THREAD:Ljava/lang/String; = " UPDATE htcthreads SET thread_id = 0 WHERE recipient_ids = old.recipient_ids;"

.field private static final UPDATE_HTCTHREAD_THREADID_ON_UPDATE_THREAD:Ljava/lang/String; = " UPDATE htcthreads SET thread_id = new._id WHERE recipient_ids = new.recipient_ids;"

.field private static final UPDATE_HTCTHREAD_UNREAD_COUNT_ON_NEW_THREAD:Ljava/lang/String; = " UPDATE htcthreads SET p_unread_count =    (SELECT unread_count       FROM threads      WHERE recipient_ids = new.recipient_ids) +    (SELECT p_unread_count       FROM htcthreads       WHERE recipient_ids = new.recipient_ids)  WHERE recipient_ids = new.recipient_ids; "

.field private static final UPDATE_PDU_SYNCED_FLAG:Ljava/lang/String; = " UPDATE pdu SET cs_synced = \'0\' WHERE pdu._id = old._id AND (pdu.msg_box = 1 or pdu.msg_box = 2); "

.field private static final UPDATE_SMS_SYNCED_FLAG:Ljava/lang/String; = " UPDATE sms SET cs_synced = \'0\' WHERE sms._id = old._id AND (sms.type = 1 or sms.type = 2); "

.field private static final UPDATE_THREAD_COUNT_ON_NEW:Ljava/lang/String; = "  UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3        AND htc_category = 0) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND htc_category = 0        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id; "

.field private static final UPDATE_THREAD_COUNT_ON_OLD:Ljava/lang/String; = "  UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND sms.type != 3        AND htc_category = 0) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND htc_category = 0        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = old.thread_id; "

.field private static final UPDATE_THREAD_DATE_SNIPPET_SNIPPET_CS_ON_DELETE:Ljava/lang/String; = "  UPDATE threads SET snippet =    (SELECT snippet FROM     (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, body AS snippet, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET snippet_cs =    (SELECT snippet_cs FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET date =    (SELECT date FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id; "

.field private static final UPDATE_THREAD_DATE_SNIPPET_SNIPPET_CS_ON_UPDATE:Ljava/lang/String; = "  UPDATE threads SET snippet =    (SELECT snippet FROM     (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128          AND htc_category=0      UNION SELECT date, body AS snippet, thread_id FROM sms        WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET snippet_cs =    (SELECT snippet_cs FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET date =    (SELECT date FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id; "

.field private static final UPDATE_THREAD_PRIORITY_ON_DELETE:Ljava/lang/String; = "  UPDATE threads SET priority =    (SELECT priority FROM     (SELECT date * 1000 AS date, pri AS priority, thread_id FROM pdu        WHERE (m_type=132 OR m_type=130 OR m_type=128)          AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms        WHERE htc_category=0)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id; "

.field private static final UPDATE_THREAD_SNIPPET_SNIPPET_CS_ON_DELETE:Ljava/lang/String; = "  UPDATE threads SET snippet =    (SELECT snippet FROM     (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu        WHERE (m_type=132 OR m_type=130 OR m_type=128)          AND htc_category=0      UNION SELECT date, body AS snippet, thread_id FROM sms        WHERE htc_category=0)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET snippet_cs =    (SELECT snippet_cs FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE (m_type=132 OR m_type=130 OR m_type=128)          AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms        WHERE htc_category=0)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id; "

.field private static final UPDATE_UNREAD_MESSAGE_COUNT_ON_NEW:Ljava/lang/String; = "  UPDATE threads SET unread_count =     (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND type = 1            AND htc_category = 0             AND thread_id = threads._id) +     (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND (m_type = 130            OR m_type = 132)             AND msg_box = 1            AND htc_category = 0             AND thread_id = threads._id)  WHERE threads._id = new.thread_id; "

.field private static final UPDATE_UNREAD_MESSAGE_COUNT_ON_OLD:Ljava/lang/String; = "  UPDATE threads SET unread_count =     (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND type = 1            AND htc_category = 0             AND thread_id = old.thread_id) +     (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND (m_type = 130            OR m_type = 132)             AND msg_box = 1            AND htc_category = 0            AND thread_id = old.thread_id)  WHERE threads._id = old.thread_id; "

.field private static mInstance:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

.field private static mmsDirObsv:Lcom/android/providers/telephony/MmsSmsDatabaseHelper$MmsDirObserver;

.field private static mmsDirObsv2:Lcom/android/providers/telephony/MmsSmsDatabaseHelper$MmsDirObserver2;

.field private static mmsFileObsv:Lcom/android/providers/telephony/MmsSmsDatabaseHelper$MmsFileObserver;

.field private static sFakeLowStorageTest:Z

.field private static sTriedAutoIncrement:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLowStorageMonitor:Lcom/android/providers/telephony/MmsSmsDatabaseHelper$LowStorageMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1028
    sput-object v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mInstance:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    .line 1029
    sput-boolean v1, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->sTriedAutoIncrement:Z

    .line 1030
    sput-boolean v1, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->sFakeLowStorageTest:Z

    .line 1032
    sput-object v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mmsDirObsv:Lcom/android/providers/telephony/MmsSmsDatabaseHelper$MmsDirObserver;

    .line 1033
    sput-object v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mmsDirObsv2:Lcom/android/providers/telephony/MmsSmsDatabaseHelper$MmsDirObserver2;

    .line 1034
    sput-object v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mmsFileObsv:Lcom/android/providers/telephony/MmsSmsDatabaseHelper$MmsFileObserver;

    .line 1035
    const-string v0, "/data/data/com.android.providers.telephony/databases/"

    sput-object v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->MmsDBFolder:Ljava/lang/String;

    .line 1036
    const-string v0, "/data/data/com.android.providers.telephony/"

    sput-object v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->MmsDBFolder2:Ljava/lang/String;

    .line 1037
    const-string v0, "/data/data/com.android.providers.telephony/databases/mmssms.db"

    sput-object v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->MmsDBFile:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 1047
    const-string v0, "mmssms.db"

    const/4 v1, 0x0

    const/16 v2, 0x52

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 1049
    iput-object p1, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mContext:Landroid/content/Context;

    .line 1064
    return-void
.end method

.method private _DumpMmsDBInfo(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .parameter "Tag"
    .parameter "event"
    .parameter "path"

    .prologue
    .line 7209
    if-nez p3, :cond_0

    .line 7210
    const-string p3, "Path is null "

    .line 7211
    :cond_0
    and-int/lit16 v0, p2, 0x200

    if-eqz v0, :cond_2

    .line 7212
    const-string v0, "MmsSmsDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  DELETE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7223
    :cond_1
    :goto_0
    return-void

    .line 7213
    :cond_2
    and-int/lit16 v0, p2, 0x400

    if-eqz v0, :cond_3

    .line 7214
    const-string v0, "MmsSmsDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  DELETE_SELF"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7215
    :cond_3
    and-int/lit8 v0, p2, 0x40

    if-eqz v0, :cond_4

    .line 7216
    const-string v0, "MmsSmsDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  MOVED_FROM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7217
    :cond_4
    and-int/lit16 v0, p2, 0x80

    if-eqz v0, :cond_5

    .line 7218
    const-string v0, "MmsSmsDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  MOVED_TO"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7219
    :cond_5
    and-int/lit16 v0, p2, 0x800

    if-eqz v0, :cond_6

    .line 7220
    const-string v0, "MmsSmsDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  MOVE_SELF"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7221
    :cond_6
    and-int/lit16 v0, p2, 0x100

    if-eqz v0, :cond_1

    .line 7222
    const-string v0, "MmsSmsDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  Create"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    sput-boolean p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->sTriedAutoIncrement:Z

    return p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->MmsDBFolder:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/providers/telephony/MmsSmsDatabaseHelper;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->_DumpMmsDBInfo(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->MmsDBFolder2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->MmsDBFile:Ljava/lang/String;

    return-object v0
.end method

.method private copyPduDateToDate2()V
    .locals 2

    .prologue
    .line 6976
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$2;

    invoke-direct {v1, p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$2;-><init>(Lcom/android/providers/telephony/MmsSmsDatabaseHelper;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 6987
    return-void
.end method

.method private copySmsDateToDate2()V
    .locals 2

    .prologue
    .line 6948
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$1;

    invoke-direct {v1, p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$1;-><init>(Lcom/android/providers/telephony/MmsSmsDatabaseHelper;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 6959
    return-void
.end method

.method private createCBTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 2452
    const-string v0, "CREATE TABLE cbch (_id INTEGER PRIMARY KEY,title TEXT NOT NULL,channel TEXT NOT NULL,enable INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2454
    return-void
.end method

.method private createCmasTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1487
    const-string v0, "CREATE TABLE IF NOT EXISTS cmas (_id INTEGER PRIMARY KEY, toa INTEGER DEFAULT 0, address TEXT, date INTEGER, protocol INTEGER DEFAULT 0, read INTEGER DEFAULT 0, subject TEXT, body TEXT, sc_toa INTEGER DEFAULT 0, service_center TEXT, locked INTEGER DEFAULT 0, callback_number TEXT, priority INTEGER DEFAULT 0, is_cdma_format INTEGER DEFAULT 0, c_type INTEGER DEFAULT 0, exp INTEGER DEFAULT 0, received_time INTEGER DEFAULT 0, pdu TEXT, cmae_id INTEGER DEFAULT -1, category INTEGER DEFAULT -1, response INTEGER DEFAULT -1, severity INTEGER DEFAULT -1, urgency INTEGER DEFAULT -1, certainty INTEGER DEFAULT -1  );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1514
    const-string v0, "CREATE VIEW IF NOT EXISTS cmas_view AS  SELECT _id, toa, address, date, protocol, read, subject, body, sc_toa,  service_center, locked, callback_number, priority, is_cdma_format, c_type,  exp, received_time, pdu, cmae_id, category, response, severity, urgency, certainty,  (CASE WHEN (exp > (strftime(\'%s\',\'now\') * 1000)) AND c_type = 1 THEN 1 ELSE 0 END)  AS presidential  FROM cmas "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1522
    return-void
.end method

.method private createCommonTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1891
    const-string v0, "CREATE TABLE canonical_addresses (_id INTEGER PRIMARY KEY,address TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1908
    const-string v0, "CREATE TABLE threads (_id INTEGER PRIMARY KEY AUTOINCREMENT,date INTEGER DEFAULT 0,message_count INTEGER DEFAULT 0,recipient_ids TEXT,recipient_address TEXT,snippet TEXT,snippet_cs INTEGER DEFAULT 0,read INTEGER DEFAULT 1,unread_count INTEGER DEFAULT 0,body TEXT,name TEXT,priority INTEGER DEFAULT 0,type INTEGER DEFAULT 0,error INTEGER DEFAULT 0,has_attachment INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1940
    const-string v0, "CREATE TABLE pending_msgs (_id INTEGER PRIMARY KEY,proto_type INTEGER,msg_id INTEGER,msg_type INTEGER,err_type INTEGER,err_code INTEGER,retry_index INTEGER NOT NULL DEFAULT 0,due_time INTEGER,last_try INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1952
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createHtcMsgsTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1953
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createHtcThreadsTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1954
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createIncomingMessageViewV2(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1957
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createIncomingMessageView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1960
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createThreadsListView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1963
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createContactsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1966
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createIncomingMessageViewContactbaseNonVVM(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1967
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createIncomingMessageViewContactbaseVVM(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1970
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createCmasTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1974
    const-string v0, "CREATE TABLE blocklist (_id INTEGER PRIMARY KEY, number TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1975
    return-void
.end method

.method private createCommonTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 2019
    const-string v1, "CREATE TRIGGER IF NOT EXISTS mark_mms_as_deleted   AFTER UPDATE OF msg_box ON pdu   WHEN (new.msg_box = 10 ) BEGIN   UPDATE pdu SET msg_box = -old.msg_box   WHERE _id = old._id; END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2030
    :try_start_0
    const-string v1, "CREATE TRIGGER pdu_update_thread_on_insert AFTER INSERT ON pdu   WHEN new.m_type=132    OR new.m_type=130    OR new.m_type=128 BEGIN  UPDATE threads SET    date = (strftime(\'%s\',\'now\') * 1000),     snippet = new.sub,     snippet_cs = new.sub_cs,  priority = new.pri  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3        AND htc_category = 0) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND htc_category = 0        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128))       WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET unread_count =     (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND type = 1            AND htc_category = 0             AND thread_id = threads._id) +     (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND (m_type = 130            OR m_type = 132)             AND msg_box = 1            AND htc_category = 0             AND thread_id = threads._id)  WHERE threads._id = new.thread_id;   UPDATE threads SET snippet =    (SELECT snippet FROM     (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128          AND htc_category=0      UNION SELECT date, body AS snippet, thread_id FROM sms        WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET snippet_cs =    (SELECT snippet_cs FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET date =    (SELECT date FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2057
    :goto_0
    :try_start_1
    const-string v1, "CREATE TRIGGER pdu_update_thread_date_subject_on_update AFTER  UPDATE OF date, sub, msg_box  ON pdu   WHEN new.m_type=132    OR new.m_type=130    OR new.m_type=128 BEGIN  UPDATE threads SET    date = (strftime(\'%s\',\'now\') * 1000),     snippet = new.sub,     snippet_cs = new.sub_cs,  priority = new.pri  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3        AND htc_category = 0) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND htc_category = 0        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128))       WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET unread_count =     (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND type = 1            AND htc_category = 0             AND thread_id = threads._id) +     (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND (m_type = 130            OR m_type = 132)             AND msg_box = 1            AND htc_category = 0             AND thread_id = threads._id)  WHERE threads._id = new.thread_id;   UPDATE threads SET snippet =    (SELECT snippet FROM     (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128          AND htc_category=0      UNION SELECT date, body AS snippet, thread_id FROM sms        WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET snippet_cs =    (SELECT snippet_cs FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET date =    (SELECT date FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2154
    :goto_1
    :try_start_2
    const-string v1, "CREATE TRIGGER pdu_update_thread_on_delete AFTER DELETE ON pdu BEGIN   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND sms.type != 3        AND htc_category = 0) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND htc_category = 0        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = old.thread_id;   UPDATE threads SET unread_count =     (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND type = 1            AND htc_category = 0             AND thread_id = old.thread_id) +     (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND (m_type = 130            OR m_type = 132)             AND msg_box = 1            AND htc_category = 0            AND thread_id = old.thread_id)  WHERE threads._id = old.thread_id;   UPDATE threads SET snippet =    (SELECT snippet FROM     (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, body AS snippet, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET snippet_cs =    (SELECT snippet_cs FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET date =    (SELECT date FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET priority =    (SELECT priority FROM     (SELECT date * 1000 AS date, pri AS priority, thread_id FROM pdu        WHERE (m_type=132 OR m_type=130 OR m_type=128)          AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms        WHERE htc_category=0)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id; END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2240
    :goto_2
    :try_start_3
    const-string v1, "CREATE TRIGGER insert_mms_pending_on_insert AFTER INSERT ON pdu WHEN new.m_type=130  OR new.m_type=135 BEGIN   INSERT INTO pending_msgs    (proto_type,     msg_id,     msg_type,     err_type,     err_code,     retry_index,     due_time)   VALUES     (1,      new._id,      new.m_type,0,0,0,0);END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 2265
    :goto_3
    :try_start_4
    const-string v1, "CREATE TRIGGER insert_mms_pending_on_update AFTER UPDATE ON pdu WHEN new.m_type=128  AND new.msg_box=4  AND old.msg_box!=4 BEGIN   INSERT INTO pending_msgs    (proto_type,     msg_id,     msg_type,     err_type,     err_code,     retry_index,     due_time)   VALUES     (1,      new._id,      new.m_type,0,0,0,0);END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 2290
    :goto_4
    :try_start_5
    const-string v1, "CREATE TRIGGER delete_mms_pending_on_update AFTER UPDATE ON pdu WHEN old.msg_box=4  AND new.msg_box!=4 BEGIN   DELETE FROM pending_msgs  WHERE msg_id=new._id; END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 2304
    :goto_5
    :try_start_6
    const-string v1, "CREATE TRIGGER delete_mms_pending_on_delete AFTER DELETE ON pdu BEGIN   DELETE FROM pending_msgs  WHERE msg_id=old._id; END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 2319
    :goto_6
    :try_start_7
    const-string v1, "CREATE TRIGGER update_threads_error_on_update_mms   AFTER UPDATE OF err_type ON pending_msgs   WHEN (OLD.err_type < 10 AND NEW.err_type >= 10)    OR (OLD.err_type >= 10 AND NEW.err_type < 10) BEGIN  UPDATE threads SET error =     CASE      WHEN NEW.err_type >= 10 THEN error + 1      ELSE error - 1    END   WHERE _id =   (SELECT DISTINCT thread_id    FROM pdu    WHERE _id = NEW.msg_id); END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 2340
    :goto_7
    :try_start_8
    const-string v1, "CREATE TRIGGER update_threads_error_on_delete_mms   BEFORE DELETE ON pdu  WHEN OLD._id IN (SELECT DISTINCT msg_id                   FROM pending_msgs                   WHERE err_type >= 10) BEGIN   UPDATE threads SET error = error - 1  WHERE _id = OLD.thread_id; END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 2356
    :goto_8
    :try_start_9
    const-string v1, "CREATE TRIGGER update_threads_error_on_move_mms   BEFORE UPDATE OF msg_box ON pdu   WHEN (OLD.msg_box = 4 AND NEW.msg_box != 4)   AND (OLD._id IN (SELECT DISTINCT msg_id                   FROM pending_msgs                   WHERE err_type >= 10)) BEGIN   UPDATE threads SET error = error - 1  WHERE _id = OLD.thread_id; END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 2373
    :goto_9
    :try_start_a
    const-string v1, "CREATE TRIGGER update_threads_error_on_update_sms   AFTER UPDATE OF type ON sms  WHEN (OLD.type != 5 AND NEW.type = 5)    OR (OLD.type = 5 AND NEW.type != 5) BEGIN   UPDATE threads SET error =     CASE      WHEN NEW.type = 5 THEN error + 1      ELSE error - 1    END   WHERE _id = NEW.thread_id; END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    .line 2406
    :goto_a
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createHtcMsgsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2411
    :try_start_b
    const-string v1, "CREATE TRIGGER update_sms_synced_flag AFTER UPDATE OF read, locked, type, status ON sms BEGIN  UPDATE sms SET cs_synced = \'0\' WHERE sms._id = old._id AND (sms.type = 1 or sms.type = 2); END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    .line 2421
    :goto_b
    :try_start_c
    const-string v1, "CREATE TRIGGER update_pdu_synced_flag AFTER UPDATE OF read, locked, msg_box ON pdu BEGIN  UPDATE pdu SET cs_synced = \'0\' WHERE pdu._id = old._id AND (pdu.msg_box = 1 or pdu.msg_box = 2); END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    .line 2430
    :goto_c
    return-void

    .line 2037
    :catch_0
    move-exception v0

    .line 2038
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create trigger pdu_update_thread_on_insert fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2065
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 2066
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create trigger pdu_update_thread_date_subject_on_update fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2175
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 2176
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create trigger pdu_update_thread_on_delete fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2259
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 2260
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create trigger insert_mms_pending_on_insert fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2284
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 2285
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create trigger insert_mms_pending_on_update fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2298
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_5
    move-exception v0

    .line 2299
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create trigger delete_mms_pending_on_update fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 2310
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_6
    move-exception v0

    .line 2311
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create trigger delete_mms_pending_on_delete fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 2334
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_7
    move-exception v0

    .line 2335
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create trigger update_threads_error_on_update_mms fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 2349
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_8
    move-exception v0

    .line 2350
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create trigger update_threads_error_on_delete_mms fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 2366
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_9
    move-exception v0

    .line 2367
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create trigger update_threads_error_on_move_mms fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 2385
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_a
    move-exception v0

    .line 2386
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create trigger update_threads_error_on_update_sms fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 2416
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_b
    move-exception v0

    .line 2417
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create trigger update_sms_synced_flag fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 2426
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_c
    move-exception v0

    .line 2427
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create trigger update_pdu_synced_flag fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c
.end method

.method private createContactsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1979
    const-string v0, "CREATE TABLE IF NOT EXISTS contacts1  (thread_id INTEGER,  htcthread_id INTEGER DEFAULT 0,  contact_id INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1984
    const-string v0, "CREATE TABLE IF NOT EXISTS contacts2  (thread_id INTEGER,  htcthread_id INTEGER DEFAULT 0,  contact_id INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1988
    return-void
.end method

.method private createHtcMsgsTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 2547
    const-string v0, "CREATE TABLE htcmsgs (_id INTEGER PRIMARY KEY, htcthread_id INTEGER DEFAULT 0, msg_type TEXT DEFAULT \'\', vvm_id TEXT DEFAULT \'\', date INTEGER DEFAULT 0, ptime INTEGER DEFAULT 0, is_private INTEGER DEFAULT 0, is_urgent INTEGER DEFAULT 0, type INTEGER DEFAULT 0, address TEXT DEFAULT \'\', read INTEGER DEFAULT 0, htc_category INTEGER DEFAULT 0, locked INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2561
    return-void
.end method

.method private createHtcMsgsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 2463
    :try_start_0
    const-string v1, "CREATE TRIGGER thread_update_htcthread_on_insert AFTER INSERT ON   threads BEGIN UPDATE htcthreads SET thread_id = new._id WHERE recipient_ids = new.recipient_ids; UPDATE htcthreads SET latest_date = (   SELECT date    FROM (     SELECT date      FROM threads WHERE recipient_ids = new.recipient_ids      UNION      SELECT date      FROM htcmsgs     WHERE htcthread_id =        (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))   WHERE recipient_ids = new.recipient_ids    ORDER BY date DESC LIMIT 1)  WHERE recipient_ids = new.recipient_ids; END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2472
    :goto_0
    :try_start_1
    const-string v1, "CREATE TRIGGER htcmsg_update_htcthread_on_insert AFTER INSERT ON htcmsgs BEGIN  UPDATE htcthreads SET latest_date = (   SELECT date    FROM (     SELECT date      FROM threads WHERE _id =        (SELECT thread_id FROM htcthreads WHERE _id = new.htcthread_id)      UNION      SELECT date      FROM htcmsgs     WHERE htcthread_id = new.htcthread_id)   ORDER BY date DESC LIMIT 1)   WHERE _id = new.htcthread_id;  UPDATE htcthreads SET msg_type =    (SELECT msg_type     FROM       (SELECT date, msg_type FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = new.htcthread_id;  UPDATE htcthreads SET vvm_ptime =    (SELECT ptime     FROM       (SELECT date, ptime FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = new.htcthread_id;  UPDATE htcthreads SET is_private =    (SELECT is_private     FROM       (SELECT date, is_private FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)   WHERE _id = new.htcthread_id;  UPDATE htcthreads SET is_urgent =    (SELECT is_urgent     FROM       (SELECT date, is_urgent FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = new.htcthread_id;  UPDATE htcthreads SET p_message_count = (   SELECT COUNT(_id) FROM htcmsgs    WHERE htcthread_id = new.htcthread_id) WHERE _id = new.htcthread_id;  UPDATE htcthreads SET p_unread_count = (   SELECT COUNT(*) FROM htcmsgs    WHERE read = 0 AND htcthread_id = new.htcthread_id)  WHERE _id = new.htcthread_id;  UPDATE htcthreads SET p_read =  CASE (       SELECT COUNT(*) FROM htcmsgs WHERE read = 0 AND htcthread_id = new.htcthread_id)    WHEN 0 THEN 1   ELSE 0 END WHERE _id = new.htcthread_id; END; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2481
    :goto_1
    :try_start_2
    const-string v1, "CREATE TRIGGER thread_update_htcthread_on_update AFTER  UPDATE ON threads BEGIN UPDATE htcthreads SET latest_date = (   SELECT date    FROM (     SELECT date      FROM threads WHERE recipient_ids = new.recipient_ids      UNION      SELECT date      FROM htcmsgs     WHERE htcthread_id =        (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))   WHERE recipient_ids = new.recipient_ids    ORDER BY date DESC LIMIT 1)  WHERE recipient_ids = new.recipient_ids; END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2490
    :goto_2
    :try_start_3
    const-string v1, "CREATE TRIGGER htcmsg_update_htcthread_on_update AFTER  UPDATE ON htcmsgs BEGIN  UPDATE htcthreads SET latest_date = (   SELECT date    FROM (     SELECT date      FROM threads WHERE _id =        (SELECT thread_id FROM htcthreads WHERE _id = new.htcthread_id)      UNION      SELECT date      FROM htcmsgs     WHERE htcthread_id = new.htcthread_id)   ORDER BY date DESC LIMIT 1)   WHERE _id = new.htcthread_id;  UPDATE htcthreads SET msg_type =    (SELECT msg_type     FROM       (SELECT date, msg_type FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = new.htcthread_id;  UPDATE htcthreads SET vvm_ptime =    (SELECT ptime     FROM       (SELECT date, ptime FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = new.htcthread_id;  UPDATE htcthreads SET is_private =    (SELECT is_private     FROM       (SELECT date, is_private FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)   WHERE _id = new.htcthread_id;  UPDATE htcthreads SET is_urgent =    (SELECT is_urgent     FROM       (SELECT date, is_urgent FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = new.htcthread_id;  UPDATE htcthreads SET p_message_count = (   SELECT COUNT(_id) FROM htcmsgs    WHERE htcthread_id = new.htcthread_id) WHERE _id = new.htcthread_id;  UPDATE htcthreads SET p_unread_count = (   SELECT COUNT(*) FROM htcmsgs    WHERE read = 0 AND htcthread_id = new.htcthread_id)  WHERE _id = new.htcthread_id;  UPDATE htcthreads SET p_read =  CASE (       SELECT COUNT(*) FROM htcmsgs WHERE read = 0 AND htcthread_id = new.htcthread_id)    WHEN 0 THEN 1   ELSE 0 END WHERE _id = new.htcthread_id; END; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 2498
    :goto_3
    :try_start_4
    const-string v1, "CREATE TRIGGER thread_update_htcthread_on_delete AFTER DELETE ON threads BEGIN  UPDATE htcthreads SET thread_id = 0 WHERE recipient_ids = old.recipient_ids; UPDATE htcthreads SET latest_date = (   SELECT date    FROM (     SELECT date      FROM htcmsgs     WHERE htcthread_id =        (SELECT _id FROM htcthreads WHERE recipient_ids = old.recipient_ids))   WHERE recipient_ids = old.recipient_ids    ORDER BY date DESC LIMIT 1)  WHERE recipient_ids = old.recipient_ids; DELETE FROM htcthreads WHERE latest_date IS NULL; END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 2509
    :goto_4
    :try_start_5
    const-string v1, "CREATE TRIGGER htcmsg_update_htcthread_on_delete AFTER DELETE ON htcmsgs BEGIN  UPDATE htcthreads SET latest_date = (   SELECT date    FROM (     SELECT date      FROM threads WHERE _id =        (SELECT thread_id FROM htcthreads WHERE _id = old.htcthread_id)      UNION      SELECT date      FROM htcmsgs     WHERE htcthread_id = old.htcthread_id)   ORDER BY date DESC LIMIT 1)   WHERE _id = old.htcthread_id;  DELETE FROM htcthreads WHERE latest_date IS NULL;  UPDATE htcthreads SET msg_type =    (SELECT msg_type     FROM       (SELECT date, msg_type FROM htcmsgs WHERE htcthread_id = old.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = old.htcthread_id;  UPDATE htcthreads SET vvm_ptime =    (SELECT ptime     FROM       (SELECT date, ptime FROM htcmsgs WHERE htcthread_id = old.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = old.htcthread_id;  UPDATE htcthreads SET is_private =    (SELECT is_private     FROM       (SELECT date, is_private FROM htcmsgs WHERE htcthread_id = old.htcthread_id)    ORDER BY date DESC LIMIT 1)   WHERE _id = old.htcthread_id;  UPDATE htcthreads SET is_urgent =    (SELECT is_urgent     FROM       (SELECT date, is_urgent FROM htcmsgs WHERE htcthread_id = old.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = old.htcthread_id;  UPDATE htcthreads SET p_message_count = (   SELECT COUNT(_id) FROM htcmsgs    WHERE htcthread_id = old.htcthread_id) WHERE _id = old.htcthread_id;  UPDATE htcthreads SET p_unread_count = (   SELECT COUNT(*) FROM htcmsgs    WHERE read = 0 AND htcthread_id = old.htcthread_id)  WHERE _id = old.htcthread_id;  UPDATE htcthreads SET p_read =  CASE (       SELECT COUNT(*) FROM htcmsgs WHERE read = 0 AND htcthread_id = old.htcthread_id)    WHEN 0 THEN 1   ELSE 0 END WHERE _id = old.htcthread_id; END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 2520
    :goto_5
    return-void

    .line 2466
    :catch_0
    move-exception v0

    .line 2467
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create trigger thread_update_htcthread_on_insert fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2475
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 2476
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create trigger htcmsg_update_htcthread_on_insert fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2484
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 2485
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create trigger thread_update_htcthread_on_update fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2493
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 2494
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create trigger htcmsg_update_htcthread_on_update fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2504
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 2505
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create trigger thread_update_htcthread_on_delete fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2517
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_5
    move-exception v0

    .line 2518
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create trigger htcmsg_update_htcthread_on_delete fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5
.end method

.method private createHtcMsgsTriggersVersion65(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 21
    .parameter "db"

    .prologue
    .line 5984
    const-string v18, "MmsSmsDatabaseHelper"

    const-string v19, "create triggers65>"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5985
    const-string v16, " UPDATE htcthreads SET thread_id = new._id WHERE recipient_ids = new.recipient_ids; "

    .line 5988
    .local v16, UPDATE_HTCTHREAD_THREADID_ON_UPDATE_THREAD:Ljava/lang/String;
    const-string v8, " UPDATE htcthreads SET latest_date = (   SELECT date    FROM (     SELECT date      FROM threads WHERE recipient_ids = new.recipient_ids      UNION      SELECT date      FROM htcmsgs     WHERE htcthread_id =        (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))   WHERE recipient_ids = new.recipient_ids    ORDER BY date DESC LIMIT 1)  WHERE recipient_ids = new.recipient_ids; "

    .line 6003
    .local v8, UPDATE_HTCTHREAD_LATEST_DATE_ON_UPDATE_THREAD:Ljava/lang/String;
    const-string v7, " UPDATE htcthreads SET latest_date = (   SELECT date    FROM (     SELECT date      FROM threads WHERE _id =        (SELECT thread_id FROM htcthreads WHERE _id = new.htcthread_id)      UNION      SELECT date      FROM htcmsgs     WHERE htcthread_id = new.htcthread_id)   ORDER BY date DESC LIMIT 1)   WHERE _id = new.htcthread_id; "

    .line 6017
    .local v7, UPDATE_HTCTHREAD_LATEST_DATE_ON_UPDATE_HTCMSG:Ljava/lang/String;
    const-string v12, " UPDATE htcthreads SET msg_type =    (SELECT msg_type     FROM       (SELECT date, msg_type FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = new.htcthread_id;  UPDATE htcthreads SET vvm_ptime =    (SELECT ptime     FROM       (SELECT date, ptime FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = new.htcthread_id;  UPDATE htcthreads SET is_private =    (SELECT is_private     FROM       (SELECT date, is_private FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)   WHERE _id = new.htcthread_id;  UPDATE htcthreads SET is_urgent =    (SELECT is_urgent     FROM       (SELECT date, is_urgent FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = new.htcthread_id; "

    .line 6047
    .local v12, UPDATE_HTCTHREAD_MSGTYPE_PTIME_PRIVATE_URGENT_ON_UPDATE_HTCMSG:Ljava/lang/String;
    const-string v10, " UPDATE htcthreads SET p_message_count = (   SELECT COUNT(_id) FROM htcmsgs    WHERE htcthread_id = new.htcthread_id) WHERE _id = new.htcthread_id;  UPDATE htcthreads SET p_unread_count = (   SELECT COUNT(*) FROM htcmsgs    WHERE read = 0 AND htcthread_id = new.htcthread_id)  WHERE _id = new.htcthread_id; "

    .line 6059
    .local v10, UPDATE_HTCTHREAD_MESSAGE_COUNT_UNREAD_COUNT_ON_NEW_HTCMSG:Ljava/lang/String;
    const-string v14, " UPDATE htcthreads SET p_read =  CASE (       SELECT COUNT(*) FROM htcmsgs WHERE read = 0 AND htcthread_id = new.htcthread_id)    WHEN 0 THEN 1   ELSE 0 END WHERE _id = new.htcthread_id; "

    .line 6068
    .local v14, UPDATE_HTCTHREAD_READ_ON_UPDATE_HTCMSG:Ljava/lang/String;
    const-string v3, " BEGIN  UPDATE htcthreads SET thread_id = new._id WHERE recipient_ids = new.recipient_ids;  UPDATE htcthreads SET latest_date = (   SELECT date    FROM (     SELECT date      FROM threads WHERE recipient_ids = new.recipient_ids      UNION      SELECT date      FROM htcmsgs     WHERE htcthread_id =        (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))   WHERE recipient_ids = new.recipient_ids    ORDER BY date DESC LIMIT 1)  WHERE recipient_ids = new.recipient_ids;  END; "

    .line 6073
    .local v3, THREAD_UPDATE_HTCTHREAD_COLUMNS_BY_DATE_ON_INSERT:Ljava/lang/String;
    const-string v2, " BEGIN  UPDATE htcthreads SET latest_date = (   SELECT date    FROM (     SELECT date      FROM threads WHERE _id =        (SELECT thread_id FROM htcthreads WHERE _id = new.htcthread_id)      UNION      SELECT date      FROM htcmsgs     WHERE htcthread_id = new.htcthread_id)   ORDER BY date DESC LIMIT 1)   WHERE _id = new.htcthread_id;  UPDATE htcthreads SET msg_type =    (SELECT msg_type     FROM       (SELECT date, msg_type FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = new.htcthread_id;  UPDATE htcthreads SET vvm_ptime =    (SELECT ptime     FROM       (SELECT date, ptime FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = new.htcthread_id;  UPDATE htcthreads SET is_private =    (SELECT is_private     FROM       (SELECT date, is_private FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)   WHERE _id = new.htcthread_id;  UPDATE htcthreads SET is_urgent =    (SELECT is_urgent     FROM       (SELECT date, is_urgent FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = new.htcthread_id;  UPDATE htcthreads SET p_message_count = (   SELECT COUNT(_id) FROM htcmsgs    WHERE htcthread_id = new.htcthread_id) WHERE _id = new.htcthread_id;  UPDATE htcthreads SET p_unread_count = (   SELECT COUNT(*) FROM htcmsgs    WHERE read = 0 AND htcthread_id = new.htcthread_id)  WHERE _id = new.htcthread_id;  UPDATE htcthreads SET p_read =  CASE (       SELECT COUNT(*) FROM htcmsgs WHERE read = 0 AND htcthread_id = new.htcthread_id)    WHEN 0 THEN 1   ELSE 0 END WHERE _id = new.htcthread_id;  END; "

    .line 6080
    .local v2, HTCMSG_UPDATE_HTCTHREAD_COLUMNS_BY_DATE_ON_UPDATE:Ljava/lang/String;
    const-string v4, " BEGIN  UPDATE htcthreads SET latest_date = (   SELECT date    FROM (     SELECT date      FROM threads WHERE recipient_ids = new.recipient_ids      UNION      SELECT date      FROM htcmsgs     WHERE htcthread_id =        (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))   WHERE recipient_ids = new.recipient_ids    ORDER BY date DESC LIMIT 1)  WHERE recipient_ids = new.recipient_ids;  END; "

    .line 6084
    .local v4, THREAD_UPDATE_HTCTHREAD_COLUMNS_BY_DATE_ON_UPDATE:Ljava/lang/String;
    const-string v15, " UPDATE htcthreads SET thread_id = 0 WHERE recipient_ids = old.recipient_ids;"

    .line 6087
    .local v15, UPDATE_HTCTHREAD_THREADID_ON_DELETE_THREAD:Ljava/lang/String;
    const-string v6, " UPDATE htcthreads SET latest_date = (   SELECT date    FROM (     SELECT date      FROM htcmsgs     WHERE htcthread_id =        (SELECT _id FROM htcthreads WHERE recipient_ids = old.recipient_ids))   WHERE recipient_ids = old.recipient_ids    ORDER BY date DESC LIMIT 1)  WHERE recipient_ids = old.recipient_ids;  DELETE FROM htcthreads WHERE latest_date IS NULL; "

    .line 6099
    .local v6, UPDATE_HTCTHREAD_LATEST_DATE_ON_DELETE_THREAD:Ljava/lang/String;
    const-string v5, " UPDATE htcthreads SET latest_date = (   SELECT date    FROM (     SELECT date      FROM threads WHERE _id =        (SELECT thread_id FROM htcthreads WHERE _id = old.htcthread_id)      UNION      SELECT date      FROM htcmsgs     WHERE htcthread_id = old.htcthread_id)   ORDER BY date DESC LIMIT 1)   WHERE _id = old.htcthread_id;  DELETE FROM htcthreads WHERE latest_date IS NULL; "

    .line 6113
    .local v5, UPDATE_HTCTHREAD_LATEST_DATE_ON_DELETE_HTCMSG:Ljava/lang/String;
    const-string v11, " UPDATE htcthreads SET msg_type =    (SELECT msg_type     FROM       (SELECT date, msg_type FROM htcmsgs WHERE htcthread_id = old.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = old.htcthread_id;  UPDATE htcthreads SET vvm_ptime =    (SELECT ptime     FROM       (SELECT date, ptime FROM htcmsgs WHERE htcthread_id = old.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = old.htcthread_id;  UPDATE htcthreads SET is_private =    (SELECT is_private     FROM       (SELECT date, is_private FROM htcmsgs WHERE htcthread_id = old.htcthread_id)    ORDER BY date DESC LIMIT 1)   WHERE _id = old.htcthread_id;  UPDATE htcthreads SET is_urgent =    (SELECT is_urgent     FROM       (SELECT date, is_urgent FROM htcmsgs WHERE htcthread_id = old.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = old.htcthread_id; "

    .line 6142
    .local v11, UPDATE_HTCTHREAD_MSGTYPE_PTIME_PRIVATE_URGENT_ON_DELETE_HTCMSG:Ljava/lang/String;
    const-string v9, " UPDATE htcthreads SET p_message_count = (   SELECT COUNT(_id) FROM htcmsgs    WHERE htcthread_id = old.htcthread_id) WHERE _id = old.htcthread_id;  UPDATE htcthreads SET p_unread_count = (   SELECT COUNT(*) FROM htcmsgs    WHERE read = 0 AND htcthread_id = old.htcthread_id)  WHERE _id = old.htcthread_id; "

    .line 6153
    .local v9, UPDATE_HTCTHREAD_MESSAGE_COUNT_UNREAD_COUNT_ON_DELETE_HTCMSG:Ljava/lang/String;
    const-string v13, " UPDATE htcthreads SET p_read =  CASE (       SELECT COUNT(*) FROM htcmsgs WHERE read = 0 AND htcthread_id = old.htcthread_id)    WHEN 0 THEN 1   ELSE 0 END WHERE _id = old.htcthread_id; "

    .line 6164
    .local v13, UPDATE_HTCTHREAD_READ_ON_DELETE_HTCMSG:Ljava/lang/String;
    :try_start_0
    const-string v18, "CREATE TRIGGER thread_update_htcthread_on_insert AFTER INSERT ON  threads  BEGIN  UPDATE htcthreads SET thread_id = new._id WHERE recipient_ids = new.recipient_ids;  UPDATE htcthreads SET latest_date = (   SELECT date    FROM (     SELECT date      FROM threads WHERE recipient_ids = new.recipient_ids      UNION      SELECT date      FROM htcmsgs     WHERE htcthread_id =        (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))   WHERE recipient_ids = new.recipient_ids    ORDER BY date DESC LIMIT 1)  WHERE recipient_ids = new.recipient_ids;  END; "

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6174
    :goto_0
    :try_start_1
    const-string v18, "CREATE TRIGGER htcmsg_update_htcthread_on_insert AFTER INSERT ON  htcmsgs  BEGIN  UPDATE htcthreads SET latest_date = (   SELECT date    FROM (     SELECT date      FROM threads WHERE _id =        (SELECT thread_id FROM htcthreads WHERE _id = new.htcthread_id)      UNION      SELECT date      FROM htcmsgs     WHERE htcthread_id = new.htcthread_id)   ORDER BY date DESC LIMIT 1)   WHERE _id = new.htcthread_id;  UPDATE htcthreads SET msg_type =    (SELECT msg_type     FROM       (SELECT date, msg_type FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = new.htcthread_id;  UPDATE htcthreads SET vvm_ptime =    (SELECT ptime     FROM       (SELECT date, ptime FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = new.htcthread_id;  UPDATE htcthreads SET is_private =    (SELECT is_private     FROM       (SELECT date, is_private FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)   WHERE _id = new.htcthread_id;  UPDATE htcthreads SET is_urgent =    (SELECT is_urgent     FROM       (SELECT date, is_urgent FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = new.htcthread_id;  UPDATE htcthreads SET p_message_count = (   SELECT COUNT(_id) FROM htcmsgs    WHERE htcthread_id = new.htcthread_id) WHERE _id = new.htcthread_id;  UPDATE htcthreads SET p_unread_count = (   SELECT COUNT(*) FROM htcmsgs    WHERE read = 0 AND htcthread_id = new.htcthread_id)  WHERE _id = new.htcthread_id;  UPDATE htcthreads SET p_read =  CASE (       SELECT COUNT(*) FROM htcmsgs WHERE read = 0 AND htcthread_id = new.htcthread_id)    WHEN 0 THEN 1   ELSE 0 END WHERE _id = new.htcthread_id;  END; "

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 6184
    :goto_1
    :try_start_2
    const-string v18, "CREATE TRIGGER thread_update_htcthread_on_update AFTER UPDATE ON threads  BEGIN  UPDATE htcthreads SET latest_date = (   SELECT date    FROM (     SELECT date      FROM threads WHERE recipient_ids = new.recipient_ids      UNION      SELECT date      FROM htcmsgs     WHERE htcthread_id =        (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))   WHERE recipient_ids = new.recipient_ids    ORDER BY date DESC LIMIT 1)  WHERE recipient_ids = new.recipient_ids;  END; "

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 6194
    :goto_2
    :try_start_3
    const-string v18, "CREATE TRIGGER htcmsg_update_htcthread_on_update AFTER UPDATE ON htcmsgs  BEGIN  UPDATE htcthreads SET latest_date = (   SELECT date    FROM (     SELECT date      FROM threads WHERE _id =        (SELECT thread_id FROM htcthreads WHERE _id = new.htcthread_id)      UNION      SELECT date      FROM htcmsgs     WHERE htcthread_id = new.htcthread_id)   ORDER BY date DESC LIMIT 1)   WHERE _id = new.htcthread_id;  UPDATE htcthreads SET msg_type =    (SELECT msg_type     FROM       (SELECT date, msg_type FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = new.htcthread_id;  UPDATE htcthreads SET vvm_ptime =    (SELECT ptime     FROM       (SELECT date, ptime FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = new.htcthread_id;  UPDATE htcthreads SET is_private =    (SELECT is_private     FROM       (SELECT date, is_private FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)   WHERE _id = new.htcthread_id;  UPDATE htcthreads SET is_urgent =    (SELECT is_urgent     FROM       (SELECT date, is_urgent FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = new.htcthread_id;  UPDATE htcthreads SET p_message_count = (   SELECT COUNT(_id) FROM htcmsgs    WHERE htcthread_id = new.htcthread_id) WHERE _id = new.htcthread_id;  UPDATE htcthreads SET p_unread_count = (   SELECT COUNT(*) FROM htcmsgs    WHERE read = 0 AND htcthread_id = new.htcthread_id)  WHERE _id = new.htcthread_id;  UPDATE htcthreads SET p_read =  CASE (       SELECT COUNT(*) FROM htcmsgs WHERE read = 0 AND htcthread_id = new.htcthread_id)    WHEN 0 THEN 1   ELSE 0 END WHERE _id = new.htcthread_id;  END; "

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 6203
    :goto_3
    :try_start_4
    const-string v18, "CREATE TRIGGER thread_update_htcthread_on_delete  AFTER DELETE ON threads  BEGIN  UPDATE htcthreads SET thread_id = 0 WHERE recipient_ids = old.recipient_ids; UPDATE htcthreads SET latest_date = (   SELECT date    FROM (     SELECT date      FROM htcmsgs     WHERE htcthread_id =        (SELECT _id FROM htcthreads WHERE recipient_ids = old.recipient_ids))   WHERE recipient_ids = old.recipient_ids    ORDER BY date DESC LIMIT 1)  WHERE recipient_ids = old.recipient_ids;  DELETE FROM htcthreads WHERE latest_date IS NULL;  END; "

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 6215
    :goto_4
    :try_start_5
    const-string v18, "CREATE TRIGGER htcmsg_update_htcthread_on_delete  AFTER DELETE ON htcmsgs  BEGIN  UPDATE htcthreads SET latest_date = (   SELECT date    FROM (     SELECT date      FROM threads WHERE _id =        (SELECT thread_id FROM htcthreads WHERE _id = old.htcthread_id)      UNION      SELECT date      FROM htcmsgs     WHERE htcthread_id = old.htcthread_id)   ORDER BY date DESC LIMIT 1)   WHERE _id = old.htcthread_id;  DELETE FROM htcthreads WHERE latest_date IS NULL;  UPDATE htcthreads SET msg_type =    (SELECT msg_type     FROM       (SELECT date, msg_type FROM htcmsgs WHERE htcthread_id = old.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = old.htcthread_id;  UPDATE htcthreads SET vvm_ptime =    (SELECT ptime     FROM       (SELECT date, ptime FROM htcmsgs WHERE htcthread_id = old.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = old.htcthread_id;  UPDATE htcthreads SET is_private =    (SELECT is_private     FROM       (SELECT date, is_private FROM htcmsgs WHERE htcthread_id = old.htcthread_id)    ORDER BY date DESC LIMIT 1)   WHERE _id = old.htcthread_id;  UPDATE htcthreads SET is_urgent =    (SELECT is_urgent     FROM       (SELECT date, is_urgent FROM htcmsgs WHERE htcthread_id = old.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = old.htcthread_id;  UPDATE htcthreads SET p_message_count = (   SELECT COUNT(_id) FROM htcmsgs    WHERE htcthread_id = old.htcthread_id) WHERE _id = old.htcthread_id;  UPDATE htcthreads SET p_unread_count = (   SELECT COUNT(*) FROM htcmsgs    WHERE read = 0 AND htcthread_id = old.htcthread_id)  WHERE _id = old.htcthread_id;  UPDATE htcthreads SET p_read =  CASE (       SELECT COUNT(*) FROM htcmsgs WHERE read = 0 AND htcthread_id = old.htcthread_id)    WHEN 0 THEN 1   ELSE 0 END WHERE _id = old.htcthread_id;  END; "

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 6227
    :goto_5
    return-void

    .line 6168
    :catch_0
    move-exception v17

    .line 6169
    .local v17, ex:Ljava/lang/Exception;
    const-string v18, "MmsSmsDatabaseHelper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "create trigger thread_update_htcthread_on_insert fail: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6178
    .end local v17           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v17

    .line 6179
    .restart local v17       #ex:Ljava/lang/Exception;
    const-string v18, "MmsSmsDatabaseHelper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "create trigger htcmsg_update_htcthread_on_insert fail: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 6188
    .end local v17           #ex:Ljava/lang/Exception;
    :catch_2
    move-exception v17

    .line 6189
    .restart local v17       #ex:Ljava/lang/Exception;
    const-string v18, "MmsSmsDatabaseHelper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "create trigger thread_update_htcthread_on_update fail: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 6198
    .end local v17           #ex:Ljava/lang/Exception;
    :catch_3
    move-exception v17

    .line 6199
    .restart local v17       #ex:Ljava/lang/Exception;
    const-string v18, "MmsSmsDatabaseHelper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "create trigger htcmsg_update_htcthread_on_update fail: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 6210
    .end local v17           #ex:Ljava/lang/Exception;
    :catch_4
    move-exception v17

    .line 6211
    .restart local v17       #ex:Ljava/lang/Exception;
    const-string v18, "MmsSmsDatabaseHelper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "create trigger thread_update_htcthread_on_delete fail: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 6224
    .end local v17           #ex:Ljava/lang/Exception;
    :catch_5
    move-exception v17

    .line 6225
    .restart local v17       #ex:Ljava/lang/Exception;
    const-string v18, "MmsSmsDatabaseHelper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "create trigger htcmsg_update_htcthread_on_delete fail: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5
.end method

.method private createHtcThreadsTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 2525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2526
    .local v0, sqlCreate:Ljava/lang/StringBuilder;
    const-string v1, "CREATE TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "htcthreads"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER PRIMARY KEY, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "thread_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER DEFAULT 0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "msg_type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT DEFAULT \'\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "latest_date"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER DEFAULT 0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "p_message_count"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER DEFAULT 0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "recipient_ids"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT DEFAULT \'\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "recipient_address"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT DEFAULT \'\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "p_read"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER DEFAULT 1, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "p_unread_count"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER DEFAULT 0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "vvm_ptime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER DEFAULT 0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is_private"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER DEFAULT 0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is_urgent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER DEFAULT 0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2541
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2542
    return-void
.end method

.method private createIncomingMessageView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 4672
    const-string v0, "CREATE VIEW incoming_msg AS SELECT transport_type, _id, thread_id, address, body, normalized_date,    sub, sub_cs, read, m_type, priority, locked, is_evdo  FROM (SELECT DISTINCT \'sms\' AS transport_type, _id, thread_id, address,            body, date AS normalized_date, NULL as sub, NULL as sub_cs,            read, NULL AS m_type, priority, locked, is_evdo FROM sms          WHERE (type = 1 AND htc_category = 0)        UNION        SELECT DISTINCT \'mms\' AS transport_type, _id, thread_id,             (SELECT address from addr              WHERE addr.msg_id = pdu._id) as address,            NULL AS body, date * 1000 AS normalized_date,            sub, sub_cs, read, m_type, pri AS priority, locked, 0 AS is_evdo FROM pdu          WHERE ((m_type = 130 OR m_type = 132) AND htc_category = 0 AND msg_box > 0)  ORDER BY normalized_date ASC)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4687
    return-void
.end method

.method private createIncomingMessageViewContactbaseNonVVM(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 4730
    const-string v0, "DROP VIEW IF EXISTS incoming_msg_contactbase_non_vvm"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4734
    const-string v0, "CREATE VIEW incoming_msg_contactbase_non_vvm AS SELECT transport_type, _id, thread_id, address, body, normalized_date, sub, sub_cs, read, m_type, priority, locked, is_evdo, contact_id, content_type FROM ( \tSELECT DISTINCT \'sms\' AS transport_type, sms._id AS _id, \t\tsms.thread_id AS thread_id, address, body, \t\tdate AS normalized_date, NULL AS sub, NULL as sub_cs, read, \t\tNULL AS m_type, priority, locked, is_evdo, contact_id, NULL as content_type \t\t\tFROM sms LEFT JOIN (SELECT thread_id AS thread_id_from_contact, contact_id FROM contacts1) \t\t\t\tON thread_id_from_contact = sms.thread_id \tWHERE (sms.type = 1 AND htc_category = 0) UNION \tSELECT DISTINCT \'mms\' AS transport_type, pdu._id AS _id, \t\tpdu.thread_id AS thread_id, (SELECT address from addr WHERE (addr.msg_id = pdu._id AND addr.type = 137)) as address, NULL AS body, \t\tdate * 1000 AS normalized_date, sub, sub_cs, read, \t\tm_type,pri AS priority, locked , 0 AS is_evdo, contact_id, ct_t AS content_type \t\t\tFROM pdu LEFT JOIN (SELECT thread_id AS thread_id_from_contact, contact_id FROM contacts1) \t\t\t\tON thread_id_from_contact = pdu.thread_id \tWHERE ((m_type = 130 OR m_type = 132) AND htc_category = 0 AND msg_box > 0) ) ORDER BY normalized_date ASC "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4756
    return-void
.end method

.method private createIncomingMessageViewContactbaseVVM(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 4761
    const-string v0, "DROP VIEW IF EXISTS incoming_msg_contactbase_vvm"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4765
    const-string v0, "CREATE VIEW incoming_msg_contactbase_vvm AS SELECT transport_type, _id, thread_id, address, body, normalized_date, sub, sub_cs, read, m_type, priority, locked, htcthread_id, vvm_id, ptime, is_private, is_urgent, vvm_type, is_evdo, contact_id, content_type  FROM ( \tSELECT DISTINCT \'sms\' AS transport_type, sms._id AS _id, \t\tsms.thread_id AS thread_id, address, body, \t\tdate AS normalized_date, NULL AS sub, NULL as sub_cs, read, \t\tNULL AS m_type, priority, locked, htcthread_id, NULL AS vvm_id, NULL AS ptime, \t\tNULL AS is_private, NULL AS is_urgent, NULL AS vvm_type, is_evdo, contact_id, NULL as content_type \t\t\tFROM sms LEFT JOIN (SELECT htcthread_id, contact_id, thread_id AS thread_id_from_contact FROM contacts1) \t\t\t\tON thread_id_from_contact = sms.thread_id \tWHERE sms.type = 1 UNION \tSELECT DISTINCT \'mms\' AS transport_type, pdu._id AS _id, \t\tpdu.thread_id AS thread_id, (SELECT address from addr WHERE (addr.msg_id = pdu._id AND addr.type = 137)) as address, NULL AS body, \t\tdate * 1000 AS normalized_date, sub, sub_cs, read, \t\tm_type,pri AS priority, locked , _id, NULL AS vvm_id, NULL AS ptime, \t\tNULL AS is_private, NULL AS is_urgent, NULL AS vvm_type, 0 AS is_evdo, contact_id, ct_t as content_type \t\t\tFROM pdu LEFT JOIN (SELECT htcthread_id, contact_id, thread_id AS thread_id_from_contact FROM contacts1) \t\t\t\tON thread_id_from_contact = pdu.thread_id \tWHERE m_type = 130 OR m_type = 132 UNION \tSELECT DISTINCT htcmsgs.msg_type AS transport_type, htcmsgs._id AS _id, \t\thtcmsgs._id, address, NULL AS body, \t\tdate AS normalized_date, NULL AS sub, NULL AS sub_cs, read, \t\tNULL AS m_type, NULL AS priority, NULL AS locked , htcthread_id, vvm_id, ptime, \t\thtcmsgs.is_private AS is_private, htcmsgs.is_urgent AS is_urgent, type AS vvm_type, 0 AS is_evdo, contact_id, NULL as content_type \t\t\tFROM htcmsgs LEFT JOIN (SELECT htcthread_id AS htcthread_id_from_contact, contact_id FROM contacts1) \t\t\t\tON htcthread_id_from_contact = htcmsgs.htcthread_id ) ORDER BY normalized_date ASC "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4798
    return-void
.end method

.method private createIncomingMessageViewV2(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 4692
    const-string v0, "DROP VIEW IF EXISTS incoming_msg_v2"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4696
    const-string v0, "CREATE VIEW incoming_msg_v2 AS SELECT transport_type, _id, thread_id, address, body, normalized_date,  sub, sub_cs, read, m_type, priority, locked, htcthread_id, vvm_id, ptime,  is_private,  is_urgent, vvm_type, is_evdo FROM (SELECT DISTINCT \'sms\' AS transport_type, sms._id AS _id,         sms.thread_id AS thread_id, address, body,        date AS normalized_date, NULL AS sub, NULL as sub_cs, read,        NULL AS m_type, priority, locked, htcthread_id, NULL AS vvm_id, NULL AS ptime,         NULL AS is_private, NULL AS is_urgent, NULL AS vvm_type, is_evdo       FROM sms LEFT JOIN (SELECT _id AS htcthread_id, thread_id AS threads_id FROM htcthreads)        ON threads_id = sms.thread_id      WHERE sms.type = 1      UNION      SELECT DISTINCT \'mms\' AS transport_type, pdu._id AS _id, pdu.thread_id AS thread_id,        (SELECT address from addr WHERE addr.msg_id = pdu._id) as address,        NULL AS body, date * 1000 AS normalized_date, sub, sub_cs, read, m_type,        pri AS priority, locked, htcthread_id, NULL AS vvm_id, NULL AS ptime, NULL AS is_private,        NULL AS is_urgent, NULL AS vvm_type, 0 AS is_evdo       FROM pdu LEFT JOIN (SELECT _id AS htcthread_id, thread_id AS threads_id FROM htcthreads)        ON threads_id = pdu.thread_id      WHERE m_type = 130 OR m_type = 132      UNION      SELECT DISTINCT htcmsgs.msg_type AS transport_type, htcmsgs._id AS _id, thread_id,         address, NULL AS body, date AS normalized_date, NULL AS sub, NULL AS sub_cs, read,         NULL AS m_type, NULL AS priority, NULL AS locked, htcthread_id, vvm_id, ptime,         htcmsgs.is_private AS is_private, htcmsgs.is_urgent AS is_urgent, type AS vvm_type, 0 AS is_evdo      FROM htcmsgs LEFT JOIN (SELECT _id AS htcthreads_id, thread_id FROM htcthreads)      ON htcthreads_id = htcmsgs.htcthread_id      ORDER BY normalized_date ASC)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4725
    return-void
.end method

.method private createIndices(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 1625
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createThreadIdIndex(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1626
    return-void
.end method

.method private createLookupTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1993
    const-string v0, "CREATE TABLE IF NOT EXISTS name_lookup  (thread_id INTEGER DEFAULT 0,  normalized_name TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1996
    return-void
.end method

.method private createLookupTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 2001
    :try_start_0
    const-string v1, "CREATE TRIGGER thread_delete_name_lookup_on_delete AFTER DELETE ON threads BEGIN DELETE FROM name_lookup WHERE thread_id = old._id; END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2009
    :goto_0
    return-void

    .line 2006
    :catch_0
    move-exception v0

    .line 2007
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create trigger thread_delete_name_lookup_on_delete fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createMmsTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1640
    const-string v0, "CREATE TABLE pdu (_id INTEGER PRIMARY KEY,thread_id INTEGER,date INTEGER,date_sent INTEGER DEFAULT 0,msg_box INTEGER,read INTEGER DEFAULT 0,m_id TEXT,sub TEXT,sub_cs INTEGER,ct_t TEXT,ct_l TEXT,exp INTEGER,m_cls TEXT,m_type INTEGER,v INTEGER,m_size INTEGER,pri INTEGER,rr INTEGER,rpt_a INTEGER,resp_st INTEGER,st INTEGER,tr_id TEXT,retr_st INTEGER,retr_txt TEXT,retr_txt_cs INTEGER,read_status INTEGER,ct_cls INTEGER,resp_txt TEXT,d_tm INTEGER,d_rpt INTEGER,locked INTEGER DEFAULT 0,htc_category INTEGER DEFAULT 0,cs_timestamp LONG DEFAULT -1, cs_id TEXT, cs_synced INTEGER DEFAULT 0, seen INTEGER DEFAULT 0, extra INTEGER DEFAULT 0, phone_type INTEGER DEFAULT 0, date2 INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1685
    const-string v0, "CREATE TABLE addr (_id INTEGER PRIMARY KEY,msg_id INTEGER,contact_id INTEGER,address TEXT,type INTEGER,charset INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1693
    const-string v0, "CREATE TABLE part (_id INTEGER PRIMARY KEY,mid INTEGER,seq INTEGER DEFAULT 0,ct TEXT,name TEXT,chset INTEGER,cd TEXT,fn TEXT,cid TEXT,cl TEXT,ctt_s INTEGER,ctt_t TEXT,ExtraUri TEXT,vCALs INTEGER,vCALe INTEGER,_data TEXT,text TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1712
    const-string v0, "CREATE TABLE rate (sent_time INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1715
    const-string v0, "CREATE TABLE drm (_id INTEGER PRIMARY KEY,_data TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1718
    return-void
.end method

.method private createMmsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 1729
    :try_start_0
    const-string v1, "CREATE TRIGGER part_cleanup DELETE ON pdu BEGIN   DELETE FROM part  WHERE mid=old._id;END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1740
    :goto_0
    :try_start_1
    const-string v1, "CREATE TRIGGER addr_cleanup DELETE ON pdu BEGIN   DELETE FROM addr  WHERE msg_id=old._id;END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1752
    :goto_1
    :try_start_2
    const-string v1, "CREATE TRIGGER cleanup_delivery_and_read_report AFTER DELETE ON pdu WHEN old.m_type=128 BEGIN   DELETE FROM pdu  WHERE (m_type=134    OR m_type=136)    AND m_id=old.m_id; END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1776
    :goto_2
    return-void

    .line 1734
    :catch_0
    move-exception v0

    .line 1735
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create trigger part_cleanup fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1745
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1746
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create trigger addr_cleanup fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1762
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 1763
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create trigger cleanup_delivery_and_read_report fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private createQTextTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 2437
    const-string v2, "CREATE TABLE qtext (_id INTEGER PRIMARY KEY,content TEXT NOT NULL, locale TEXT);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2440
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 2441
    .local v1, r:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2445
    .local v0, locale:Ljava/lang/String;
    return-void
.end method

.method private createSmsTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 1792
    invoke-static {}, Lcom/android/providers/telephony/util/TelephUtils;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1797
    .local v0, isCdmaFormat:I
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE sms (_id INTEGER PRIMARY KEY,thread_id INTEGER,toa INTEGER DEFAULT 0,address TEXT,person INTEGER,date INTEGER,date_sent INTEGER DEFAULT 0,protocol INTEGER,read INTEGER DEFAULT 0,status INTEGER DEFAULT -1,type INTEGER,reply_path_present INTEGER,subject TEXT,body TEXT,sc_toa INTEGER DEFAULT 0,report_date INTEGER,service_center TEXT,locked INTEGER DEFAULT 0,index_on_sim TEXT,callback_number TEXT,priority INTEGER DEFAULT 0,htc_category INTEGER DEFAULT 0,cs_timestamp LONG DEFAULT -1, cs_id TEXT, cs_synced INTEGER DEFAULT 0, error_code INTEGER DEFAULT 0,seen INTEGER DEFAULT 0, is_cdma_format INTEGER DEFAULT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is_evdo INTEGER DEFAULT 0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "c_type INTEGER DEFAULT 0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "exp INTEGER DEFAULT 0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gid INTEGER DEFAULT 0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "extra INTEGER DEFAULT 0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "date2 INTEGER DEFAULT 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1853
    const-string v1, "CREATE TABLE raw (_id INTEGER PRIMARY KEY,date INTEGER,reference_number INTEGER,count INTEGER,sequence INTEGER,destination_port INTEGER,address TEXT,pdu TEXT,phone_type INTEGER DEFAULT 0);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1864
    const-string v1, "CREATE TABLE attachments (sms_id INTEGER,content_url TEXT,offset INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1873
    const-string v1, "CREATE TABLE sr_pending (reference_number INTEGER,action TEXT,data TEXT);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1877
    return-void

    .line 1792
    .end local v0           #isCdmaFormat:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createSmsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 1780
    const-string v0, "cosmos"

    const-string v1, "set sms triggers"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    const-string v0, "CREATE TRIGGER IF NOT EXISTS mark_sms_as_deleted   AFTER UPDATE OF type ON sms   WHEN (new.type = 10 ) BEGIN   UPDATE sms SET type = -old.type   WHERE _id = old._id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1788
    return-void
.end method

.method private createSmsTriggersVersion64(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13
    .parameter "db"

    .prologue
    .line 5655
    const-string v10, "MmsSmsDatabaseHelper"

    const-string v11, "createSmsTriggersVersion64>"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5656
    const-string v2, "  UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3        AND htc_category = 0) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND htc_category = 0        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id; "

    .line 5671
    .local v2, UPDATE_THREAD_COUNT_ON_NEW:Ljava/lang/String;
    const-string v1, "  UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id            AND htc_category = 0) +         (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND htc_category = 0            AND (m_type=132              OR m_type=130)            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; "

    .line 5690
    .local v1, SMS_UPDATE_THREAD_READ_BODY:Ljava/lang/String;
    const-string v7, "  UPDATE threads SET unread_count =     (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND type = 1            AND htc_category = 0             AND thread_id = threads._id) +     (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND (m_type = 130            OR m_type = 132)             AND msg_box = 1            AND htc_category = 0             AND thread_id = threads._id)  WHERE threads._id = new.thread_id; "

    .line 5708
    .local v7, UPDATE_UNREAD_MESSAGE_COUNT_ON_NEW:Ljava/lang/String;
    const-string v5, "  UPDATE threads SET snippet =    (SELECT snippet FROM     (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128          AND htc_category=0      UNION SELECT date, body AS snippet, thread_id FROM sms        WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET snippet_cs =    (SELECT snippet_cs FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET date =    (SELECT date FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id; "

    .line 5737
    .local v5, UPDATE_THREAD_DATE_SNIPPET_SNIPPET_CS_ON_UPDATE:Ljava/lang/String;
    const-string v0, "BEGIN  UPDATE threads SET    date = new.date,     snippet = new.body,     snippet_cs = 0  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3        AND htc_category = 0) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND htc_category = 0        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id            AND htc_category = 0) +         (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND htc_category = 0            AND (m_type=132              OR m_type=130)            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET unread_count =     (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND type = 1            AND htc_category = 0             AND thread_id = threads._id) +     (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND (m_type = 130            OR m_type = 132)             AND msg_box = 1            AND htc_category = 0             AND thread_id = threads._id)  WHERE threads._id = new.thread_id;   UPDATE threads SET snippet =    (SELECT snippet FROM     (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128          AND htc_category=0      UNION SELECT date, body AS snippet, thread_id FROM sms        WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET snippet_cs =    (SELECT snippet_cs FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET date =    (SELECT date FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id; END;"

    .line 5750
    .local v0, SMS_UPDATE_THREAD_DATE_SNIPPET_COUNT_BY_DATE_ON_UPDATE:Ljava/lang/String;
    const-string v3, "  UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND sms.type != 3        AND htc_category = 0) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND htc_category = 0        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = old.thread_id; "

    .line 5765
    .local v3, UPDATE_THREAD_COUNT_ON_OLD:Ljava/lang/String;
    const-string v8, "  UPDATE threads SET unread_count =     (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND type = 1            AND htc_category = 0             AND thread_id = old.thread_id) +     (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND (m_type = 130            OR m_type = 132)             AND msg_box = 1            AND htc_category = 0            AND thread_id = old.thread_id)  WHERE threads._id = old.thread_id; "

    .line 5783
    .local v8, UPDATE_UNREAD_MESSAGE_COUNT_ON_OLD:Ljava/lang/String;
    const-string v4, "  UPDATE threads SET snippet =    (SELECT snippet FROM     (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, body AS snippet, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET snippet_cs =    (SELECT snippet_cs FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET date =    (SELECT date FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id; "

    .line 5812
    .local v4, UPDATE_THREAD_DATE_SNIPPET_SNIPPET_CS_ON_DELETE:Ljava/lang/String;
    const-string v6, "  UPDATE threads SET priority =    (SELECT priority FROM     (SELECT date * 1000 AS date, pri AS priority, thread_id FROM pdu        WHERE (m_type=132 OR m_type=130 OR m_type=128)          AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms        WHERE htc_category=0)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id; "

    .line 5825
    .local v6, UPDATE_THREAD_PRIORITY_ON_DELETE:Ljava/lang/String;
    :try_start_0
    const-string v10, "CREATE TRIGGER sms_update_thread_on_insert AFTER INSERT ON sms BEGIN  UPDATE threads SET    date = new.date,     snippet = new.body,     snippet_cs = 0  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3        AND htc_category = 0) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND htc_category = 0        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id            AND htc_category = 0) +         (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND htc_category = 0            AND (m_type=132              OR m_type=130)            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET unread_count =     (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND type = 1            AND htc_category = 0             AND thread_id = threads._id) +     (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND (m_type = 130            OR m_type = 132)             AND msg_box = 1            AND htc_category = 0             AND thread_id = threads._id)  WHERE threads._id = new.thread_id;   UPDATE threads SET snippet =    (SELECT snippet FROM     (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128          AND htc_category=0      UNION SELECT date, body AS snippet, thread_id FROM sms        WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET snippet_cs =    (SELECT snippet_cs FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET date =    (SELECT date FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5833
    :goto_0
    :try_start_1
    const-string v10, "CREATE TRIGGER sms_update_thread_date_subject_on_update AFTER  UPDATE OF date, body, type  ON sms BEGIN  UPDATE threads SET    date = new.date,     snippet = new.body,     snippet_cs = 0  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3        AND htc_category = 0) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND htc_category = 0        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id            AND htc_category = 0) +         (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND htc_category = 0            AND (m_type=132              OR m_type=130)            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET unread_count =     (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND type = 1            AND htc_category = 0             AND thread_id = threads._id) +     (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND (m_type = 130            OR m_type = 132)             AND msg_box = 1            AND htc_category = 0             AND thread_id = threads._id)  WHERE threads._id = new.thread_id;   UPDATE threads SET snippet =    (SELECT snippet FROM     (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128          AND htc_category=0      UNION SELECT date, body AS snippet, thread_id FROM sms        WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET snippet_cs =    (SELECT snippet_cs FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET date =    (SELECT date FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 5843
    :goto_1
    :try_start_2
    const-string v10, "CREATE TRIGGER sms_update_thread_read_on_update AFTER  UPDATE OF read, htc_category   ON sms BEGIN   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id            AND htc_category = 0) +         (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND htc_category = 0            AND (m_type=132              OR m_type=130)            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET unread_count =     (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND type = 1            AND htc_category = 0             AND thread_id = threads._id) +     (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND (m_type = 130            OR m_type = 132)             AND msg_box = 1            AND htc_category = 0             AND thread_id = threads._id)  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 5857
    :goto_2
    :try_start_3
    const-string v10, "CREATE TRIGGER sms_update_thread_on_delete AFTER DELETE ON sms BEGIN   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND sms.type != 3        AND htc_category = 0) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND htc_category = 0        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = old.thread_id;   UPDATE threads SET unread_count =     (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND type = 1            AND htc_category = 0             AND thread_id = old.thread_id) +     (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND (m_type = 130            OR m_type = 132)             AND msg_box = 1            AND htc_category = 0            AND thread_id = old.thread_id)  WHERE threads._id = old.thread_id;   UPDATE threads SET snippet =    (SELECT snippet FROM     (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, body AS snippet, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET snippet_cs =    (SELECT snippet_cs FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET date =    (SELECT date FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET priority =    (SELECT priority FROM     (SELECT date * 1000 AS date, pri AS priority, thread_id FROM pdu        WHERE (m_type=132 OR m_type=130 OR m_type=128)          AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms        WHERE htc_category=0)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id; END;"

    invoke-virtual {p1, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 5870
    :goto_3
    :try_start_4
    const-string v10, "CREATE TRIGGER delete_obsolete_threads_sms AFTER DELETE ON sms BEGIN   DELETE FROM threads   WHERE     _id = old.thread_id     AND _id NOT IN     (SELECT thread_id FROM sms      UNION SELECT thread_id from pdu); END;"

    invoke-virtual {p1, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 5887
    :goto_4
    :try_start_5
    const-string v10, "CREATE TRIGGER update_threads_error_on_update_sms   AFTER UPDATE OF type ON sms  WHEN (OLD.type != 5 AND NEW.type = 5)    OR (OLD.type = 5 AND NEW.type != 5) BEGIN   UPDATE threads SET error =     CASE      WHEN NEW.type = 5 THEN error + 1      ELSE error - 1    END   WHERE _id = NEW.thread_id; END;"

    invoke-virtual {p1, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 5905
    :goto_5
    :try_start_6
    const-string v10, "CREATE TRIGGER update_threads_error_on_delete_sms   AFTER DELETE ON sms  WHEN (OLD.type = 5) BEGIN   UPDATE threads SET error = error - 1  WHERE _id = OLD.thread_id; END;"

    invoke-virtual {p1, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 5918
    :goto_6
    :try_start_7
    const-string v10, "CREATE TRIGGER update_sms_synced_flag AFTER UPDATE OF read, locked, type, status ON sms BEGIN  UPDATE sms SET cs_synced = \'0\'  WHERE sms._id = old._id AND (sms.type = 1 or sms.type = 2); END;"

    invoke-virtual {p1, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 5927
    :goto_7
    return-void

    .line 5827
    :catch_0
    move-exception v9

    .line 5828
    .local v9, ex:Ljava/lang/Exception;
    const-string v10, "MmsSmsDatabaseHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "create trigger sms_update_thread_on_insert fail: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5837
    .end local v9           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v9

    .line 5838
    .restart local v9       #ex:Ljava/lang/Exception;
    const-string v10, "MmsSmsDatabaseHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "create trigger sms_update_thread_date_subject_on_update fail: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5850
    .end local v9           #ex:Ljava/lang/Exception;
    :catch_2
    move-exception v9

    .line 5851
    .restart local v9       #ex:Ljava/lang/Exception;
    const-string v10, "MmsSmsDatabaseHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "create trigger sms_update_thread_read_on_update fail: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 5865
    .end local v9           #ex:Ljava/lang/Exception;
    :catch_3
    move-exception v9

    .line 5866
    .restart local v9       #ex:Ljava/lang/Exception;
    const-string v10, "MmsSmsDatabaseHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "create trigger sms_update_thread_on_delete fail: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 5880
    .end local v9           #ex:Ljava/lang/Exception;
    :catch_4
    move-exception v9

    .line 5881
    .restart local v9       #ex:Ljava/lang/Exception;
    const-string v10, "MmsSmsDatabaseHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "create trigger delete_obsolete_threads_sms fail: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 5899
    .end local v9           #ex:Ljava/lang/Exception;
    :catch_5
    move-exception v9

    .line 5900
    .restart local v9       #ex:Ljava/lang/Exception;
    const-string v10, "MmsSmsDatabaseHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "create trigger update_threads_error_on_update_sms fail: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 5912
    .end local v9           #ex:Ljava/lang/Exception;
    :catch_6
    move-exception v9

    .line 5913
    .restart local v9       #ex:Ljava/lang/Exception;
    const-string v10, "MmsSmsDatabaseHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "create trigger update_threads_error_on_delete_sms fail: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 5924
    .end local v9           #ex:Ljava/lang/Exception;
    :catch_7
    move-exception v9

    .line 5925
    .restart local v9       #ex:Ljava/lang/Exception;
    const-string v10, "MmsSmsDatabaseHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "create trigger update_sms_synced_flag fail: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7
.end method

.method private createThreadIdIndex(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 1630
    :try_start_0
    const-string v1, "CREATE INDEX IF NOT EXISTS typeThreadIdIndex ON sms (type, thread_id);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1635
    :goto_0
    return-void

    .line 1632
    :catch_0
    move-exception v0

    .line 1633
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got exception creating indices: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createThreadsListView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 2567
    const-string v0, "CREATE VIEW IF NOT EXISTS threads_list AS   SELECT _id,         T.norm_date AS date,         T.message_count AS message_count,         recipient_ids,         recipient_address,         T.snippet AS snippet,         T.snippet_cs AS snippet_cs,         CASE T.htc_category WHEN 0 THEN read ELSE 1 END AS read,         unread_count,         body,         name,         priority,         type,         error,         has_attachment,         T.transport_type AS transport_type,         T.msg_box AS msg_box,         T.locked AS locked,         T.htc_category AS htc_category,         T.err_type AS err_type,         T.c_type AS c_type,         T.exp AS exp  FROM threads  LEFT JOIN (SELECT COUNT(*) AS message_count, norm_date,                    snippet,                    snippet_cs,                    thread_id,                    transport_type,                    msg_box,                    locked,                    htc_category,                    err_type,                    c_type,                    exp             FROM (SELECT date * 1000 AS norm_date,                          sub AS snippet,                          sub_cs AS snippet_cs,                          thread_id,                          \'mms\' AS transport_type,                          msg_box,                          locked,                          htc_category,                          err_type,                          0 as c_type,                          0 as exp                   FROM pdu LEFT JOIN pending_msgs ON pdu._id = pending_msgs.msg_id                   WHERE msg_box > 0 AND (m_type = 128 OR m_type = 130 OR m_type = 132)                   UNION                   SELECT date AS norm_date,                          body AS snippet,                          0 AS snippet_cs,                          thread_id,                          \'sms\' AS transport_type,                          type AS msg_box,                          locked,                          htc_category,                          error_code AS err_type,                          c_type,                          exp                   FROM sms                   WHERE type > 0)             GROUP BY thread_id, htc_category) T  ON threads._id = T.thread_id"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2631
    return-void
.end method

.method private createThreadsListView67(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 6553
    const-string v0, "DROP VIEW IF EXISTS threads_list"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6554
    const-string v0, "CREATE VIEW IF NOT EXISTS threads_list AS   SELECT _id,         T.norm_date AS date,         T.message_count AS message_count,         recipient_ids,         recipient_address,         T.snippet AS snippet,         T.snippet_cs AS snippet_cs,         CASE T.htc_category WHEN 0 THEN read ELSE 1 END AS read,         unread_count,         body,         name,         priority,         type,         error,         has_attachment,         T.transport_type AS transport_type,         T.msg_box AS msg_box,         T.locked AS locked,         T.htc_category AS htc_category,         T.err_type AS err_type  FROM threads  LEFT JOIN (SELECT COUNT(*) AS message_count, norm_date,                    snippet,                    snippet_cs,                    thread_id,                    transport_type,                    msg_box,                    locked,                    htc_category,                    err_type             FROM (SELECT date * 1000 AS norm_date,                          sub AS snippet,                          sub_cs AS snippet_cs,                          thread_id,                          \'mms\' AS transport_type,                          msg_box,                          locked,                          htc_category,                          err_type                   FROM pdu LEFT JOIN pending_msgs ON pdu._id = pending_msgs.msg_id                   WHERE msg_box > 0 AND (m_type = 128 OR m_type = 130 OR m_type = 132)                   UNION                   SELECT date AS norm_date,                          body AS snippet,                          0 AS snippet_cs,                          thread_id,                          \'sms\' AS transport_type,                          type AS msg_box,                          locked,                          htc_category,                          error_code AS err_type                   FROM sms                   WHERE type > 0)             GROUP BY thread_id, htc_category) T  ON threads._id = T.thread_id"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6610
    return-void
.end method

.method private createWordsTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 1598
    :try_start_0
    const-string v1, "CREATE VIRTUAL TABLE words USING FTS3 (_id INTEGER PRIMARY KEY, index_text TEXT, source_id INTEGER, table_to_use INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1605
    const-string v1, "CREATE TRIGGER sms_words_update AFTER UPDATE ON sms BEGIN UPDATE words  SET index_text = NEW.body WHERE (source_id=NEW._id AND table_to_use=1);  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1608
    const-string v1, "CREATE TRIGGER sms_words_delete AFTER DELETE ON sms BEGIN DELETE FROM   words WHERE source_id = OLD._id AND table_to_use = 1; END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1612
    const-string v1, "CREATE TRIGGER mms_words_update AFTER UPDATE ON part BEGIN UPDATE words  SET index_text = NEW.text WHERE (source_id=NEW._id AND table_to_use=2);  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1615
    const-string v1, "CREATE TRIGGER mms_words_delete AFTER DELETE ON part BEGIN DELETE FROM  words WHERE source_id = OLD._id AND table_to_use = 2; END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1618
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->populateWordsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1622
    :goto_0
    return-void

    .line 1619
    :catch_0
    move-exception v0

    .line 1620
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got exception creating words table: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static deleteOneSms(Landroid/database/sqlite/SQLiteDatabase;IZZ)I
    .locals 15
    .parameter "db"
    .parameter "message_id"
    .parameter "bgDelete"
    .parameter "trashDelete"

    .prologue
    .line 1408
    const/4 v13, -0x1

    .line 1409
    .local v13, thread_id:I
    const/4 v11, 0x0

    .line 1411
    .local v11, hasMessage:Z
    const-string v2, "sms"

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "thread_id"

    aput-object v4, v3, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1413
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 1414
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1415
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1416
    const/4 v11, 0x1

    .line 1418
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1422
    :cond_1
    if-nez v11, :cond_3

    .line 1423
    const/4 v12, 0x0

    .line 1458
    :cond_2
    :goto_0
    return v12

    .line 1429
    :cond_3
    const/4 v12, 0x0

    .line 1431
    .local v12, rows:I
    const/4 v1, 0x1

    move/from16 v0, p2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x1

    move/from16 v0, p3

    if-ne v0, v1, :cond_6

    .line 1432
    :cond_4
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 1433
    .local v14, values:Landroid/content/ContentValues;
    const/4 v1, 0x1

    move/from16 v0, p3

    if-ne v0, v1, :cond_5

    .line 1435
    const-string v1, "type"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1441
    :goto_1
    const-string v1, "read"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1442
    const-string v1, "sms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v14, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 1454
    .end local v14           #values:Landroid/content/ContentValues;
    :goto_2
    if-lez v13, :cond_2

    .line 1456
    int-to-long v1, v13

    invoke-static {p0, v1, v2}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThread(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_0

    .line 1439
    .restart local v14       #values:Landroid/content/ContentValues;
    :cond_5
    const-string v1, "thread_id"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 1447
    .end local v14           #values:Landroid/content/ContentValues;
    :cond_6
    :try_start_0
    const-string v1, "sms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteAbortException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    goto :goto_2

    .line 1448
    :catch_0
    move-exception v10

    .line 1449
    .local v10, e:Landroid/database/sqlite/SQLiteAbortException;
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteAbortException;->printStackTrace()V

    goto :goto_2
.end method

.method public static deleteSimSmsOnDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 11
    .parameter "db"
    .parameter "selection"

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 1386
    const/4 v9, -0x1

    .line 1388
    .local v9, thread_id:I
    const-string v1, "sms"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "thread_id"

    aput-object v0, v2, v10

    move-object v0, p0

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1390
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 1391
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1392
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1394
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1399
    :cond_1
    const-string v0, "sms"

    invoke-virtual {p0, v0, p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1400
    if-lez v9, :cond_2

    .line 1402
    int-to-long v0, v9

    invoke-static {p0, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThread(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1404
    :cond_2
    return-void
.end method

.method private dropAll(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3524
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->dropQTextTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3525
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->dropCommonTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3526
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->dropMmsTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3527
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->dropSmsTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3528
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->dropCBTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3530
    const-string v0, "DROP TABLE IF EXISTS canonical_addresses"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3531
    const-string v0, "DROP TABLE IF EXISTS threads"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3532
    const-string v0, "DROP TABLE IF EXISTS pending_msgs"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3533
    const-string v0, "DROP TABLE IF EXISTS sms"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3534
    const-string v0, "DROP TABLE IF EXISTS raw"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3535
    const-string v0, "DROP TABLE IF EXISTS attachments"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3536
    const-string v0, "DROP TABLE IF EXISTS thread_ids"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3537
    const-string v0, "DROP TABLE IF EXISTS sr_pending"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3538
    const-string v0, "DROP TABLE IF EXISTS pdu;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3539
    const-string v0, "DROP TABLE IF EXISTS addr;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3540
    const-string v0, "DROP TABLE IF EXISTS part;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3541
    const-string v0, "DROP TABLE IF EXISTS rate;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3542
    const-string v0, "DROP TABLE IF EXISTS drm;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3543
    return-void
.end method

.method private dropCBTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3615
    const-string v0, "DROP TABLE IF EXISTS cbch"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3616
    return-void
.end method

.method private dropCmasTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3659
    const-string v0, "DROP TABLE IF EXISTS cmas"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3660
    const-string v0, "DROP VIEW IF EXISTS cmas_view"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3661
    return-void
.end method

.method private dropCommonTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3546
    const-string v0, "DROP TABLE IF EXISTS canonical_addresses"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3547
    const-string v0, "DROP TABLE IF EXISTS threads"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3548
    const-string v0, "DROP TABLE IF EXISTS pending_msgs"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3550
    const-string v0, "DROP VIEW IF EXISTS incoming_msg"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3552
    const-string v0, "DROP VIEW IF EXISTS threads_list"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3554
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->dropHtcThreadsTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3555
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->dropHtcMsgsTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3556
    const-string v0, "DROP VIEW IF EXISTS incoming_msg_v2"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3560
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->dropContactsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3562
    const-string v0, "DROP VIEW IF EXISTS incoming_msg_contactbase_non_vvm"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3563
    const-string v0, "DROP VIEW IF EXISTS incoming_msg_contactbase_vvm"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3566
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->dropCmasTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3568
    const-string v0, "DROP TABLE IF EXISTS blocklist"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3569
    return-void
.end method

.method private dropCommonTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3572
    const-string v0, "DROP TRIGGER IF EXISTS delete_obsolete_threads_pdu"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3573
    const-string v0, "DROP TRIGGER IF EXISTS delete_obsolete_threads_when_update_pdu"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3574
    const-string v0, "DROP TRIGGER IF EXISTS delete_obsolete_threads_sms"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3575
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_on_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3576
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_on_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3577
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_date_subject_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3578
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_date_subject_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3579
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_read_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3580
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_read_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3581
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_on_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3582
    const-string v0, "DROP TRIGGER IF EXISTS insert_mms_pending_on_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3583
    const-string v0, "DROP TRIGGER IF EXISTS insert_mms_pending_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3584
    const-string v0, "DROP TRIGGER IF EXISTS delete_mms_pending_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3585
    const-string v0, "DROP TRIGGER IF EXISTS delete_mms_pending_on_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3586
    const-string v0, "DROP TRIGGER IF EXISTS update_threads_error_on_update_mms"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3587
    const-string v0, "DROP TRIGGER IF EXISTS update_threads_error_on_delete_mms"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3588
    const-string v0, "DROP TRIGGER IF EXISTS update_threads_error_on_move_mms"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3589
    const-string v0, "DROP TRIGGER IF EXISTS update_threads_error_on_update_sms"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3590
    const-string v0, "DROP TRIGGER IF EXISTS update_threads_error_on_delete_sms"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3591
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_on_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3593
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->dropHtcMsgsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3596
    const-string v0, "DROP TRIGGER IF EXISTS update_sms_synced_flag"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3597
    const-string v0, "DROP TRIGGER IF EXISTS update_pdu_synced_flag"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3599
    return-void
.end method

.method private dropContactsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3652
    const-string v0, "DROP TABLE IF EXISTS contacts1"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3653
    const-string v0, "DROP TABLE IF EXISTS contacts2"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3654
    return-void
.end method

.method private dropHtcMsgsTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3638
    const-string v0, "DROP TABLE IF EXISTS htcmsgs"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3639
    return-void
.end method

.method private dropHtcMsgsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3642
    const-string v0, "DROP TRIGGER IF EXISTS thread_update_htcthread_on_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3643
    const-string v0, "DROP TRIGGER IF EXISTS htcmsg_update_htcthread_on_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3644
    const-string v0, "DROP TRIGGER IF EXISTS thread_update_htcthread_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3645
    const-string v0, "DROP TRIGGER IF EXISTS htcmsg_update_htcthread_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3646
    const-string v0, "DROP TRIGGER IF EXISTS thread_update_htcthread_on_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3647
    const-string v0, "DROP TRIGGER IF EXISTS htcmsg_update_htcthread_on_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3648
    return-void
.end method

.method private dropHtcThreadsTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3634
    const-string v0, "DROP TABLE IF EXISTS htcthreads"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3635
    return-void
.end method

.method private dropMmsTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3620
    const-string v0, "DROP TABLE IF EXISTS pdu;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3621
    const-string v0, "DROP TABLE IF EXISTS addr;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3622
    const-string v0, "DROP TABLE IF EXISTS part;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3623
    const-string v0, "DROP TABLE IF EXISTS rate;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3624
    const-string v0, "DROP TABLE IF EXISTS drm;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3625
    return-void
.end method

.method private dropMmsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3628
    const-string v0, "DROP TRIGGER IF EXISTS part_cleanup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3629
    const-string v0, "DROP TRIGGER IF EXISTS addr_cleanup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3630
    const-string v0, "DROP TRIGGER IF EXISTS cleanup_delivery_and_read_report;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3631
    return-void
.end method

.method private dropQTextTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3611
    const-string v0, "DROP TABLE IF EXISTS qtext"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3612
    return-void
.end method

.method private dropSmsTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3602
    const-string v0, "DROP TABLE IF EXISTS sms"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3603
    const-string v0, "DROP TABLE IF EXISTS newSmsIndicator"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3604
    const-string v0, "DROP TABLE IF EXISTS raw"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3605
    const-string v0, "DROP TABLE IF EXISTS attachments"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3606
    const-string v0, "DROP TABLE IF EXISTS thread_ids"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3607
    const-string v0, "DROP TABLE IF EXISTS sr_pending"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3608
    return-void
.end method

.method public static getHelper(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;
    .locals 1
    .parameter "context"

    .prologue
    .line 1082
    invoke-static {p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object v0

    return-object v0
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;
    .locals 2
    .parameter "context"

    .prologue
    .line 1071
    const-class v1, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mInstance:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    if-nez v0, :cond_0

    .line 1072
    new-instance v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    invoke-direct {v0, p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mInstance:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    .line 1074
    :cond_0
    sget-object v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mInstance:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 1071
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private hasAutoIncrement(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 7
    .parameter "db"

    .prologue
    const/4 v4, 0x0

    .line 7096
    const/4 v2, 0x0

    .line 7097
    .local v2, result:Z
    const-string v1, "SELECT sql FROM sqlite_master WHERE type=\'table\' AND name=\'threads\'"

    .line 7098
    .local v1, query:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {p1, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 7099
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 7101
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7102
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 7103
    .local v3, schema:Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v4, "AUTOINCREMENT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 7104
    :goto_0
    const-string v4, "MmsSmsDatabaseHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MmsSmsDb] hasAutoIncrement: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7107
    .end local v3           #schema:Ljava/lang/String;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 7110
    :cond_1
    return v2

    .restart local v3       #schema:Ljava/lang/String;
    :cond_2
    move v2, v4

    .line 7103
    goto :goto_0

    .line 7107
    .end local v3           #schema:Ljava/lang/String;
    :catchall_0
    move-exception v4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v4
.end method

.method private populateWordsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 16
    .parameter "db"

    .prologue
    .line 1528
    const-string v9, "words"

    .line 1530
    .local v9, TABLE_WORDS:Ljava/lang/String;
    const-string v2, "sms"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    const-string v4, "body"

    aput-object v4, v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1539
    .local v15, smsRows:Landroid/database/Cursor;
    if-eqz v15, :cond_1

    .line 1540
    const/4 v1, -0x1

    :try_start_0
    invoke-interface {v15, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1541
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1542
    .local v11, cv:Landroid/content/ContentValues;
    :goto_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1543
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    .line 1545
    const/4 v1, 0x0

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1546
    .local v12, id:J
    const/4 v1, 0x1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1548
    .local v10, body:Ljava/lang/String;
    const-string v1, "_id"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1549
    const-string v1, "index_text"

    invoke-virtual {v11, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1550
    const-string v1, "source_id"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1551
    const-string v1, "table_to_use"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1552
    const-string v1, "words"

    const-string v2, "index_text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1556
    .end local v10           #body:Ljava/lang/String;
    .end local v11           #cv:Landroid/content/ContentValues;
    .end local v12           #id:J
    :catchall_0
    move-exception v1

    if-eqz v15, :cond_0

    .line 1557
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v1

    .line 1556
    :cond_1
    if-eqz v15, :cond_2

    .line 1557
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1563
    :cond_2
    const-string v2, "part"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    const-string v4, "text"

    aput-object v4, v3, v1

    const-string v4, "ct = \'text/plain\'"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1572
    .local v14, mmsRows:Landroid/database/Cursor;
    if-eqz v14, :cond_4

    .line 1573
    const/4 v1, -0x1

    :try_start_1
    invoke-interface {v14, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1574
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1575
    .restart local v11       #cv:Landroid/content/ContentValues;
    :goto_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1576
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    .line 1578
    const/4 v1, 0x0

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1579
    .restart local v12       #id:J
    const/4 v1, 0x1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1581
    .restart local v10       #body:Ljava/lang/String;
    const-string v1, "_id"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1582
    const-string v1, "index_text"

    invoke-virtual {v11, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1583
    const-string v1, "source_id"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1584
    const-string v1, "table_to_use"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1585
    const-string v1, "words"

    const-string v2, "index_text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 1589
    .end local v10           #body:Ljava/lang/String;
    .end local v11           #cv:Landroid/content/ContentValues;
    .end local v12           #id:J
    :catchall_1
    move-exception v1

    if-eqz v14, :cond_3

    .line 1590
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1

    .line 1589
    :cond_4
    if-eqz v14, :cond_5

    .line 1590
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1594
    :cond_5
    return-void
.end method

.method public static refreshThreadsTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 13
    .parameter "db"
    .parameter "threadIds"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x3

    .line 1329
    const-string v8, "MmsSmsDatabaseHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "refreshThreadsTable: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    if-nez p1, :cond_0

    .line 1332
    new-instance v8, Ljava/lang/AssertionError;

    const-string v9, "threadIds can\'t be null"

    invoke-direct {v8, v9}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8

    .line 1334
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "thread_id in ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1335
    .local v5, selectSQL:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SELECT thread_id as _id, date, SUM(msg_count) AS message_count, recipient_ids, recipient_address, snippet, snippet_cs, MIN(read) AS read, SUM(unread_count) AS unread_count, body, name, priority, type, error, has_attachment, transport_type, msg_box, locked, htc_category, err_type, c_type, exp FROM(   SELECT * FROM   (        SELECT msg_count, t._id AS thread_id, p.date * 1000 AS date , p.read, t.recipient_address, t.recipient_ids, p.unread_count, t.body, p.snippet, p.snippet_cs, t.error, t.priority,t.type, \'mms\' AS transport_type, p.msg_box, p.locked, t.name, pm.err_type, t.has_attachment, p.htc_category, 0 as c_type, 0 as exp FROM        (            SELECT count(1) AS msg_count, count(1)-SUM(read) AS unread_count, thread_id,_id, date , MIN(read) AS read, sub AS snippet, sub_cs AS snippet_cs, msg_box, locked, htc_category            FROM pdu WHERE msg_box > 0 AND msg_box != 3 AND (m_type = 128 OR m_type = 132 OR m_type = 130) AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " GROUP BY thread_id"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "        ) p JOIN threads t ON p.thread_id = t._id left JOIN pending_msgs pm ON p._id = pm.msg_id"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "        UNION ALL"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "        SELECT msg_count, t._id AS thread_id, s.date, s.read, t.recipient_address, t.recipient_ids, s.unread_count, t.body, s.snippet, 0 AS snippet_cs, t.error, t.priority,t.type, \'sms\' AS transport_type, s.msg_box, s.locked, t.name, s.err_type, t.has_attachment, s.htc_category, s.c_type, s.exp FROM"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "        ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "            SELECT count(1) AS msg_count, count(1)-SUM(CASE WHEN type != 1 THEN 1 ELSE read END) AS unread_count, thread_id, date, MIN(CASE WHEN type != 1 THEN 1 ELSE read END) AS read, body AS snippet, 0 AS snippet_cs, type AS msg_box, locked, error_code As err_type, htc_category, c_type, exp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "            FROM (SELECT * FROM sms ORDER BY date) where type != 3 AND type > 0 AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " GROUP BY thread_id"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "        ) s JOIN threads t ON s.thread_id = t._id"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "   ) ORDER BY date"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") GROUP BY _id"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1353
    .local v0, coreSQL:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SELECT _id,message_count,read,unread_count,snippet,snippet_cs,date FROM ( "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ) WHERE htc_category = 0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1358
    .local v3, finalSQL:Ljava/lang/String;
    const-string v8, "MmsSmsDatabaseHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "refreshThreadsTable threadIDs: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    invoke-virtual {p0, v3, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1361
    .local v2, cursor:Landroid/database/Cursor;
    if-eqz v2, :cond_2

    .line 1362
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1363
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 1364
    .local v1, count:I
    const-string v8, "MmsSmsDatabaseHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "refreshThreadsTable count: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 1366
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1367
    .local v6, values:Landroid/content/ContentValues;
    const-string v8, "message_count"

    const/4 v9, 0x1

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1368
    const-string v8, "read"

    const/4 v9, 0x2

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1369
    const-string v8, "unread_count"

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1370
    const-string v8, "MmsSmsDatabaseHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unread count: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    const-string v8, "snippet"

    const/4 v9, 0x4

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    const-string v8, "snippet_cs"

    const/4 v9, 0x5

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1373
    const-string v8, "date"

    const/4 v9, 0x6

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1374
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1375
    .local v7, where:Ljava/lang/String;
    const-string v8, "threads"

    invoke-virtual {p0, v8, v6, v7, v12}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1376
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 1365
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1379
    .end local v1           #count:I
    .end local v4           #i:I
    .end local v6           #values:Landroid/content/ContentValues;
    .end local v7           #where:Ljava/lang/String;
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1382
    :cond_2
    return-void
.end method

.method public static updateAllThreads(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 5
    .parameter "db"
    .parameter "threadIds"

    .prologue
    const/4 v4, 0x0

    .line 1301
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT _id FROM threads WHERE _id IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1302
    .local v1, query:Ljava/lang/String;
    invoke-virtual {p0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1303
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 1305
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1306
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    invoke-static {p0, v2, v3}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThread(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1309
    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1313
    :cond_1
    const-string v2, "threads"

    const-string v3, "_id NOT IN (SELECT DISTINCT thread_id FROM sms WHERE thread_id > 0 UNION SELECT DISTINCT thread_id FROM pdu WHERE thread_id > 0) "

    invoke-virtual {p0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1322
    return-void
.end method

.method public static updateAllThreads(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .parameter "db"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    const/4 v4, 0x0

    .line 1253
    if-nez p1, :cond_0

    .line 1254
    const-string p1, ""

    .line 1258
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT _id FROM threads WHERE _id IN (SELECT DISTINCT thread_id FROM sms "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1260
    .local v1, query:Ljava/lang/String;
    invoke-virtual {p0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1261
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 1263
    :goto_1
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1264
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    invoke-static {p0, v2, v3}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThread(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1267
    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1256
    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #query:Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WHERE ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1267
    .restart local v0       #c:Landroid/database/Cursor;
    .restart local v1       #query:Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1277
    :cond_2
    const-string v2, "threads"

    const-string v3, "_id NOT IN (SELECT DISTINCT thread_id FROM sms WHERE thread_id > 0 UNION SELECT DISTINCT thread_id FROM pdu WHERE thread_id > 0) "

    invoke-virtual {p0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1285
    const-string v2, "htcthreads"

    const-string v3, "_id NOT IN (SELECT DISTINCT htcthread_id FROM htcmsgs WHERE htcthread_id > 0) AND thread_id NOT IN ( SELECT DISTINCT thread_id FROM sms WHERE thread_id > 0 UNION SELECT DISTINCT thread_id FROM pdu WHERE thread_id > 0)"

    invoke-virtual {p0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1295
    const-string v2, "canonical_addresses"

    const-string v3, "_id NOT IN (SELECT DISTINCT recipient_ids FROM threads)"

    invoke-virtual {p0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1297
    return-void
.end method

.method public static updateThread(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 13
    .parameter "db"
    .parameter "thread_id"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 1087
    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-gez v6, :cond_1

    .line 1088
    invoke-static {p0, v10, v10}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateAllThreads(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1250
    :cond_0
    :goto_0
    return-void

    .line 1092
    :cond_1
    const-string v6, "MmsSmsDatabaseHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateThread: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    const-string v6, "threads"

    const-string v7, "_id = ? AND _id NOT IN          (SELECT thread_id FROM sms            WHERE thread_id NOT NULL            UNION SELECT thread_id FROM pdu            WHERE thread_id NOT NULL)"

    new-array v8, v12, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {p0, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1106
    .local v4, rows:I
    if-lez v4, :cond_2

    .line 1108
    const-string v6, "canonical_addresses"

    const-string v7, "_id NOT IN (SELECT DISTINCT recipient_ids FROM threads)"

    invoke-virtual {p0, v6, v7, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1111
    const-string v6, "htcthreads"

    const-string v7, "_id NOT IN (SELECT DISTINCT htcthread_id FROM htcmsgs WHERE htcthread_id > 0) AND thread_id = ? AND thread_id NOT IN ( SELECT DISTINCT thread_id FROM sms WHERE thread_id NOT NULL UNION SELECT DISTINCT thread_id FROM pdu WHERE thread_id NOT NULL)"

    new-array v8, v12, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {p0, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 1124
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "        AND sms."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "type"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " != 3"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "        AND htc_category = 0) + "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "     (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "      ON threads._id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "thread_id"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "      WHERE "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "thread_id"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "        AND (m_type=132 OR m_type=130 OR m_type=128)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "        AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "msg_box"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " != 3"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "        AND htc_category = 0) "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  WHERE threads._id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1152
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  UPDATE threads  SET  date =    (SELECT date FROM        (SELECT date * 1000 AS date, thread_id FROM pdu WHERE htc_category = 0         UNION SELECT date, thread_id FROM sms WHERE htc_category = 0)     WHERE thread_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ORDER BY date DESC LIMIT 1),"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  snippet ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "    (SELECT snippet FROM"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "        (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "           WHERE (m_type=132 OR m_type=130 OR m_type=128) AND htc_category = 0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "         UNION SELECT date, body AS snippet, thread_id FROM sms WHERE htc_category = 0)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "     WHERE thread_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ORDER BY date DESC LIMIT 1),"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  snippet_cs ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "    (SELECT snippet_cs FROM"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "        (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "           WHERE (m_type=132 OR m_type=130 OR m_type=128) AND htc_category = 0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "         UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms WHERE htc_category = 0)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "     WHERE thread_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ORDER BY date DESC LIMIT 1),"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  priority ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "    (SELECT prioritys FROM"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "        (SELECT date * 1000 AS date, pri AS prioritys, thread_id FROM pdu WHERE htc_category = 0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "         UNION SELECT date,CASE WHEN priority = 0 THEN priority+129 ELSE priority+128 END AS prioritys, thread_id FROM sms WHERE htc_category = 0)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "     WHERE thread_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ORDER BY date DESC LIMIT 1)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  WHERE threads._id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1199
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  UPDATE threads SET unread_count =     (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND type = 1            AND htc_category = 0             AND thread_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") + "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "    (SELECT COUNT(*)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "          FROM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "pdu"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "          WHERE "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "read"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = 0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "            AND ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "m_type"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x82

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "            OR "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "m_type"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x84

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "            AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "msg_box"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "            AND htc_category = 0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "            AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "thread_id"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  WHERE threads._id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1220
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT thread_id FROM sms WHERE type=5 AND thread_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " LIMIT 1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1224
    .local v3, query:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1225
    .local v5, setError:I
    invoke-virtual {p0, v3, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1226
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_3

    .line 1228
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 1230
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1234
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT error FROM threads WHERE _id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1235
    .local v2, errorQuery:Ljava/lang/String;
    invoke-virtual {p0, v2, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1236
    if-eqz v0, :cond_0

    .line 1238
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1239
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1240
    .local v1, curError:I
    if-eq v1, v5, :cond_4

    .line 1242
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE threads SET error="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " WHERE _id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1247
    .end local v1           #curError:I
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1230
    .end local v2           #errorQuery:Ljava/lang/String;
    :catchall_0
    move-exception v6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v6

    .line 1247
    .restart local v2       #errorQuery:Ljava/lang/String;
    :catchall_1
    move-exception v6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v6
.end method

.method private upgradeDatabaseToVersion25(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3665
    const-string v0, "ALTER TABLE threads ADD COLUMN type INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3667
    return-void
.end method

.method private upgradeDatabaseToVersion26(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3670
    const-string v0, "ALTER TABLE threads ADD COLUMN error INTEGER DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3676
    const-string v0, "UPDATE threads SET error = 1 WHERE _id IN  (SELECT thread_id FROM pdu LEFT JOIN pending_msgs     ON pdu.thread_id = pending_msgs.msg_id     WHERE proto_type = 1 AND err_type >= 10     GROUP BY thread_id); UPDATE threads SET error = 1 WHERE _id IN  (SELECT thread_id FROM sms LEFT JOIN pending_msgs     ON sms.thread_id = pending_msgs.msg_id     WHERE proto_type = 0 AND err_type >= 10     GROUP BY thread_id); "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3687
    const-string v0, "CREATE TRIGGER update_threads_error_on_update   AFTER UPDATE OF err_type ON pending_msgs BEGIN UPDATE threads SET error = 1 WHERE _id IN  (SELECT thread_id FROM pdu LEFT JOIN pending_msgs     ON pdu.thread_id = pending_msgs.msg_id     WHERE proto_type = 1 AND err_type >= 10     GROUP BY thread_id); UPDATE threads SET error = 1 WHERE _id IN  (SELECT thread_id FROM sms LEFT JOIN pending_msgs     ON sms.thread_id = pending_msgs.msg_id     WHERE proto_type = 0 AND err_type >= 10     GROUP BY thread_id); END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3702
    const-string v0, "CREATE TRIGGER update_threads_error_on_delete   AFTER DELETE ON pending_msgs BEGIN UPDATE threads SET error = 1 WHERE _id IN  (SELECT thread_id FROM pdu LEFT JOIN pending_msgs     ON pdu.thread_id = pending_msgs.msg_id     WHERE proto_type = 1 AND err_type >= 10     GROUP BY thread_id); UPDATE threads SET error = 1 WHERE _id IN  (SELECT thread_id FROM sms LEFT JOIN pending_msgs     ON sms.thread_id = pending_msgs.msg_id     WHERE proto_type = 0 AND err_type >= 10     GROUP BY thread_id); END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3716
    return-void
.end method

.method private upgradeDatabaseToVersion27(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3719
    const-string v0, "UPDATE threads SET error = 1 WHERE _id IN  (SELECT thread_id FROM pdu LEFT JOIN pending_msgs     ON pdu._id = pending_msgs.msg_id     WHERE proto_type = 1 AND err_type >= 10     GROUP BY thread_id); UPDATE threads SET error = 1 WHERE _id IN  (SELECT thread_id FROM sms LEFT JOIN pending_msgs     ON sms._id = pending_msgs.msg_id     WHERE proto_type = 0 AND err_type >= 10     GROUP BY thread_id); "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3730
    const-string v0, "DROP TRIGGER IF EXISTS update_threads_error_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3731
    const-string v0, "DROP TRIGGER IF EXISTS update_threads_error_on_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3733
    const-string v0, "CREATE TRIGGER update_threads_error_on_update   AFTER UPDATE OF err_type ON pending_msgs BEGIN UPDATE threads SET error = 1 WHERE _id IN  (SELECT thread_id FROM pdu LEFT JOIN pending_msgs     ON pdu._id = pending_msgs.msg_id     WHERE proto_type = 1 AND err_type >= 10     GROUP BY thread_id); UPDATE threads SET error = 1 WHERE _id IN  (SELECT thread_id FROM sms LEFT JOIN pending_msgs     ON sms._id = pending_msgs.msg_id     WHERE proto_type = 0 AND err_type >= 10     GROUP BY thread_id); END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3748
    const-string v0, "CREATE TRIGGER update_threads_error_on_delete   AFTER DELETE ON pending_msgs BEGIN UPDATE threads SET error = 1 WHERE _id IN  (SELECT thread_id FROM pdu LEFT JOIN pending_msgs     ON pdu._id = pending_msgs.msg_id     WHERE proto_type = 1 AND err_type >= 10     GROUP BY thread_id); UPDATE threads SET error = 1 WHERE _id IN  (SELECT thread_id FROM sms LEFT JOIN pending_msgs     ON sms._id = pending_msgs.msg_id     WHERE proto_type = 0 AND err_type >= 10     GROUP BY thread_id); END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3762
    return-void
.end method

.method private upgradeDatabaseToVersion28(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3765
    const-string v0, "ALTER TABLE threads ADD COLUMN snippet_cs INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3768
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_on_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3769
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_date_subject_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3770
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_read_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3771
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_on_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3773
    const-string v0, "CREATE TRIGGER pdu_update_thread_on_insert AFTER INSERT ON pdu   WHEN new.msg_box!=5 AND new.msg_box!=3    AND (new.m_type=132 OR new.m_type=130 OR new.m_type=128) BEGIN  UPDATE threads SET    date = (strftime(\'%s\',\'now\') * 1000),     snippet = new.sub,     snippet_cs = new.sub_cs  WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0 AND thread_id = threads._id)      WHEN 0 THEN 1 ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3791
    const-string v0, "CREATE TRIGGER pdu_update_thread_date_subject_on_update AFTER  UPDATE OF date, sub, msg_box ON pdu   WHEN new.msg_box!=5 AND new.msg_box!=3    AND (new.m_type=132 OR new.m_type=130 OR new.m_type=128) BEGIN  UPDATE threads SET    date = (strftime(\'%s\',\'now\') * 1000),     snippet = new.sub,     snippet_cs = new.sub_cs  WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0 AND thread_id = threads._id)      WHEN 0 THEN 1 ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3810
    const-string v0, "CREATE TRIGGER pdu_update_thread_read_on_update AFTER  UPDATE OF read ON pdu   WHEN new.msg_box!=5 AND new.msg_box!=3    AND (new.m_type=132 OR new.m_type=130 OR new.m_type=128) BEGIN   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0 AND thread_id = threads._id)      WHEN 0 THEN 1 ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3824
    const-string v0, "CREATE TRIGGER sms_update_thread_on_delete AFTER DELETE ON sms BEGIN   UPDATE threads SET      date = (strftime(\'%s\',\'now\') * 1000),      snippet = (SELECT body FROM SMS ORDER BY date DESC LIMIT 1)  WHERE threads._id = old.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3832
    return-void
.end method

.method private upgradeDatabaseToVersion29(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3835
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_on_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3836
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_date_subject_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3837
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_read_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3839
    const-string v0, "CREATE TRIGGER pdu_update_thread_on_insert AFTER INSERT ON pdu   WHEN new.m_type=132 OR new.m_type=130 OR new.m_type=128 BEGIN  UPDATE threads SET    date = (strftime(\'%s\',\'now\') * 1000),     snippet = new.sub,     snippet_cs = new.sub_cs  WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0 AND thread_id = threads._id)      WHEN 0 THEN 1 ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3856
    const-string v0, "CREATE TRIGGER pdu_update_thread_date_subject_on_update AFTER  UPDATE OF date, sub, msg_box ON pdu   WHEN new.m_type=132 OR new.m_type=130 OR new.m_type=128 BEGIN  UPDATE threads SET    date = (strftime(\'%s\',\'now\') * 1000),     snippet = new.sub,     snippet_cs = new.sub_cs  WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0 AND thread_id = threads._id)      WHEN 0 THEN 1 ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3874
    const-string v0, "CREATE TRIGGER pdu_update_thread_read_on_update AFTER  UPDATE OF read ON pdu   WHEN new.m_type=132 OR new.m_type=130 OR new.m_type=128 BEGIN   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0 AND thread_id = threads._id)      WHEN 0 THEN 1 ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3886
    return-void
.end method

.method private upgradeDatabaseToVersion30(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3894
    const-string v0, "CREATE TABLE temp_threads (_id INTEGER PRIMARY KEY,date INTEGER DEFAULT 0,subject TEXT,recipient_ids TEXT,snippet TEXT,snippet_cs INTEGER DEFAULT 0,read INTEGER DEFAULT 1,type INTEGER DEFAULT 0,error INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3904
    const-string v0, "INSERT INTO temp_threads SELECT * FROM threads;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3905
    const-string v0, "DROP TABLE IF EXISTS threads;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3906
    const-string v0, "ALTER TABLE temp_threads RENAME TO threads;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3907
    return-void
.end method

.method private upgradeDatabaseToVersion31(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3910
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_on_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3914
    const-string v0, "CREATE TRIGGER sms_update_thread_on_delete AFTER DELETE ON sms BEGIN   UPDATE threads SET      date = (strftime(\'%s\',\'now\') * 1000)   WHERE threads._id = old.thread_id;   UPDATE threads SET    snippet = (SELECT snippet FROM      (SELECT date * 1000 AS date, sub AS snippet,         sub_cs AS snippet_cs FROM pdu       UNION SELECT date, body AS snippet, NULL AS snippet_cs         FROM sms) ORDER BY date DESC LIMIT 1)   WHERE threads._id = old.thread_id;   UPDATE threads SET    snippet_cs = (SELECT snippet_cs FROM      (SELECT date * 1000 AS date, sub AS snippet,         sub_cs AS snippet_cs FROM pdu       UNION SELECT date, body AS snippet, NULL AS snippet_cs         FROM sms) ORDER BY date DESC LIMIT 1)   WHERE threads._id = old.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3937
    const-string v0, "CREATE TRIGGER pdu_update_thread_on_delete AFTER DELETE ON pdu BEGIN   UPDATE threads SET      date = (strftime(\'%s\',\'now\') * 1000)  WHERE threads._id = old.thread_id;  UPDATE threads SET    snippet = (SELECT snippet FROM      (SELECT date * 1000 AS date, sub AS snippet,         sub_cs AS snippet_cs FROM pdu       UNION SELECT date, body AS snippet, NULL AS snippet_cs         FROM sms) ORDER BY date DESC LIMIT 1)   WHERE threads._id = old.thread_id;   UPDATE threads SET    snippet_cs = (SELECT snippet_cs FROM      (SELECT date * 1000 AS date, sub AS snippet,         sub_cs AS snippet_cs FROM pdu       UNION SELECT date, body AS snippet, NULL AS snippet_cs         FROM sms) ORDER BY date DESC LIMIT 1)   WHERE threads._id = old.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3958
    return-void
.end method

.method private upgradeDatabaseToVersion32(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3961
    const-string v0, "CREATE TABLE IF NOT EXISTS rate (sent_time INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3962
    return-void
.end method

.method private upgradeDatabaseToVersion33(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3965
    const-string v0, "DROP TRIGGER IF EXISTS update_threads_error_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3966
    const-string v0, "DROP TRIGGER IF EXISTS update_threads_error_on_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3968
    const-string v0, "CREATE TRIGGER update_threads_error_on_update_mms   AFTER UPDATE OF err_type ON pending_msgs   WHEN (OLD.err_type < 10 AND NEW.err_type >= 10)    OR (OLD.err_type >= 10 AND NEW.err_type < 10) BEGIN  UPDATE threads SET error =     CASE      WHEN NEW.err_type >= 10 THEN error + 1      ELSE error - 1    END   WHERE _id =   (SELECT DISTINCT thread_id    FROM pdu    WHERE _id = NEW.msg_id); END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3984
    const-string v0, "CREATE TRIGGER update_threads_error_on_delete_mms   BEFORE DELETE ON pdu  WHEN OLD._id IN (SELECT DISTINCT msg_id                   FROM pending_msgs                   WHERE err_type >= 10) BEGIN   UPDATE threads SET error = error - 1  WHERE _id = OLD.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3994
    const-string v0, "CREATE TRIGGER update_threads_error_on_update_sms   AFTER UPDATE OF type ON sms  WHEN (OLD.type != 5 AND NEW.type = 5)    OR (OLD.type = 5 AND NEW.type != 5) BEGIN   UPDATE threads SET error =     CASE      WHEN NEW.type = 5 THEN error + 1      ELSE error - 1    END   WHERE _id = NEW.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4007
    const-string v0, "CREATE TRIGGER update_threads_error_on_delete_sms   AFTER DELETE ON sms  WHEN (OLD.type = 5) BEGIN   UPDATE threads SET error = error - 1  WHERE _id = OLD.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4014
    return-void
.end method

.method private upgradeDatabaseToVersion34(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 4017
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_on_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4018
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_date_subject_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4020
    const-string v0, "CREATE TRIGGER sms_update_thread_on_insert AFTER INSERT ON sms BEGIN  UPDATE threads SET    date = (strftime(\'%s\',\'now\') * 1000),     snippet = new.body,    snippet_cs = 0  WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4038
    const-string v0, "CREATE TRIGGER sms_update_thread_date_subject_on_update AFTER  UPDATE OF date, body, msg_box  ON sms BEGIN  UPDATE threads SET    date = (strftime(\'%s\',\'now\') * 1000),     snippet = new.body,    snippet_cs = 0  WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4057
    return-void
.end method

.method private upgradeDatabaseToVersion35(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 4060
    const-string v0, "CREATE TABLE temp_threads (_id INTEGER PRIMARY KEY,date INTEGER DEFAULT 0,message_count INTEGER DEFAULT 0,recipient_ids TEXT,snippet TEXT,snippet_cs INTEGER DEFAULT 0,read INTEGER DEFAULT 1,type INTEGER DEFAULT 0,error INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4070
    const-string v0, "INSERT INTO temp_threads SELECT _id, date, 0 AS message_count, recipient_ids,       snippet, snippet_cs, read, type, error FROM threads;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4074
    const-string v0, "DROP TABLE IF EXISTS threads;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4075
    const-string v0, "ALTER TABLE temp_threads RENAME TO threads;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4077
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_on_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4078
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_on_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4079
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_on_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4080
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_on_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4081
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_date_subject_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4082
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_date_subject_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4084
    const-string v0, "CREATE TRIGGER pdu_update_thread_on_insert AFTER INSERT ON pdu   WHEN new.m_type=132 OR new.m_type=130 OR new.m_type=128 BEGIN  UPDATE threads SET    date = (strftime(\'%s\',\'now\') * 1000),     snippet = new.sub,     snippet_cs = new.sub_cs  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0 AND thread_id = threads._id)      WHEN 0 THEN 1 ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4112
    const-string v0, "CREATE TRIGGER sms_update_thread_on_insert AFTER INSERT ON sms BEGIN  UPDATE threads SET    date = (strftime(\'%s\',\'now\') * 1000),     snippet = new.body,    snippet_cs = 0  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4141
    const-string v0, "CREATE TRIGGER sms_update_thread_on_delete AFTER DELETE ON sms BEGIN   UPDATE threads SET      date = (strftime(\'%s\',\'now\') * 1000)   WHERE threads._id = old.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = old.thread_id;   UPDATE threads SET    snippet = (SELECT snippet FROM      (SELECT date * 1000 AS date, sub AS snippet,         sub_cs AS snippet_cs FROM pdu       UNION SELECT date, body AS snippet, NULL AS snippet_cs         FROM sms) ORDER BY date DESC LIMIT 1)   WHERE threads._id = old.thread_id;   UPDATE threads SET    snippet_cs = (SELECT snippet_cs FROM      (SELECT date * 1000 AS date, sub AS snippet,         sub_cs AS snippet_cs FROM pdu       UNION SELECT date, body AS snippet, NULL AS snippet_cs         FROM sms) ORDER BY date DESC LIMIT 1)   WHERE threads._id = old.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4174
    const-string v0, "CREATE TRIGGER pdu_update_thread_on_delete AFTER DELETE ON pdu BEGIN   UPDATE threads SET      date = (strftime(\'%s\',\'now\') * 1000)  WHERE threads._id = old.thread_id;  UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = old.thread_id;   UPDATE threads SET    snippet = (SELECT snippet FROM      (SELECT date * 1000 AS date, sub AS snippet,         sub_cs AS snippet_cs FROM pdu       UNION SELECT date, body AS snippet, NULL AS snippet_cs         FROM sms) ORDER BY date DESC LIMIT 1)   WHERE threads._id = old.thread_id;   UPDATE threads SET    snippet_cs = (SELECT snippet_cs FROM      (SELECT date * 1000 AS date, sub AS snippet,         sub_cs AS snippet_cs FROM pdu       UNION SELECT date, body AS snippet, NULL AS snippet_cs         FROM sms) ORDER BY date DESC LIMIT 1)   WHERE threads._id = old.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4207
    const-string v0, "CREATE TRIGGER sms_update_thread_date_subject_on_update AFTER  UPDATE OF date, body, type  ON sms BEGIN  UPDATE threads SET    date = (strftime(\'%s\',\'now\') * 1000),     snippet = new.body,    snippet_cs = 0  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4238
    const-string v0, "CREATE TRIGGER pdu_update_thread_date_subject_on_update AFTER  UPDATE OF date, sub, msg_box ON pdu   WHEN new.m_type=132 OR new.m_type=130 OR new.m_type=128 BEGIN  UPDATE threads SET    date = (strftime(\'%s\',\'now\') * 1000),     snippet = new.sub,     snippet_cs = new.sub_cs  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0 AND thread_id = threads._id)      WHEN 0 THEN 1 ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4266
    return-void
.end method

.method private upgradeDatabaseToVersion36(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 4269
    const-string v0, "CREATE TABLE IF NOT EXISTS drm (_id INTEGER PRIMARY KEY, _data TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4270
    const-string v0, "CREATE TRIGGER IF NOT EXISTS drm_file_cleanup DELETE ON drm BEGIN SELECT _DELETE_FILE(old._data); END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4272
    return-void
.end method

.method private upgradeDatabaseToVersion37(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 4275
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_on_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4276
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_on_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4278
    const-string v0, "CREATE TRIGGER sms_update_thread_on_delete AFTER DELETE ON sms BEGIN   UPDATE threads SET      date = (strftime(\'%s\',\'now\') * 1000)   WHERE threads._id = old.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = old.thread_id;   UPDATE threads SET snippet =    (SELECT snippet FROM     (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu      UNION SELECT date, body AS snippet, thread_id FROM sms)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET snippet_cs =    (SELECT snippet_cs FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4309
    const-string v0, "CREATE TRIGGER pdu_update_thread_on_delete AFTER DELETE ON pdu BEGIN   UPDATE threads SET      date = (strftime(\'%s\',\'now\') * 1000)  WHERE threads._id = old.thread_id;  UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = old.thread_id;   UPDATE threads SET snippet =    (SELECT snippet FROM     (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu      UNION SELECT date, body AS snippet, thread_id FROM sms)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET snippet_cs =    (SELECT snippet_cs FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4340
    const-string v0, "CREATE TABLE temp_part (_id INTEGER PRIMARY KEY,mid INTEGER,seq INTEGER DEFAULT 0,ct TEXT,name TEXT,chset INTEGER,cd TEXT,fn TEXT,cid TEXT,cl TEXT,ctt_s INTEGER,ctt_t TEXT,_data TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4354
    const-string v0, "INSERT INTO temp_part SELECT * FROM part;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4355
    const-string v0, "UPDATE temp_part SET seq=\'0\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4356
    const-string v0, "UPDATE temp_part SET seq=\'-1\' WHERE ct=\'application/smil\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4357
    const-string v0, "DROP TABLE IF EXISTS part;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4358
    const-string v0, "ALTER TABLE temp_part RENAME TO part;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4359
    return-void
.end method

.method private upgradeDatabaseToVersion38(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 4362
    const-string v0, "DROP TRIGGER IF EXISTS part_file_cleanup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4363
    const-string v0, "DROP TRIGGER IF EXISTS drm_file_cleanup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4364
    return-void
.end method

.method private upgradeDatabaseToVersion39(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 4367
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_on_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4368
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_date_subject_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4369
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_on_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4370
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_date_subject_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4372
    const-string v0, "CREATE TRIGGER sms_update_thread_on_insert AFTER INSERT ON sms BEGIN  UPDATE threads SET    date = (strftime(\'%s\',\'now\') * 1000),     snippet = new.body,    snippet_cs = 0  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3         AND pdu.m_id is NULL) +      (SELECT COUNT(DISTINCT pdu.m_id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3         AND pdu.m_id is not NULL)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4408
    const-string v0, "CREATE TRIGGER sms_update_thread_date_subject_on_update AFTER  UPDATE OF date, body, type  ON sms BEGIN  UPDATE threads SET    date = (strftime(\'%s\',\'now\') * 1000),     snippet = new.body,    snippet_cs = 0  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3         AND pdu.m_id is NULL) +      (SELECT COUNT(DISTINCT pdu.m_id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3         AND pdu.m_id is not NULL)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4446
    const-string v0, "CREATE TRIGGER pdu_update_thread_on_insert AFTER INSERT ON pdu   WHEN new.m_type=132 OR new.m_type=130 OR new.m_type=128 BEGIN  UPDATE threads SET    date = (strftime(\'%s\',\'now\') * 1000),     snippet = new.sub,     snippet_cs = new.sub_cs  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3         AND pdu.m_id is NULL) +      (SELECT COUNT(DISTINCT pdu.m_id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3         AND pdu.m_id is not NULL)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0 AND thread_id = threads._id)      WHEN 0 THEN 1 ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4481
    const-string v0, "CREATE TRIGGER pdu_update_thread_date_subject_on_update AFTER  UPDATE OF date, sub, msg_box ON pdu   WHEN new.m_type=132 OR new.m_type=130 OR new.m_type=128 BEGIN  UPDATE threads SET    date = (strftime(\'%s\',\'now\') * 1000),     snippet = new.sub,     snippet_cs = new.sub_cs  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3         AND pdu.m_id is NULL) +      (SELECT COUNT(DISTINCT pdu.m_id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3         AND pdu.m_id is not NULL)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0 AND thread_id = threads._id)      WHEN 0 THEN 1 ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4516
    return-void
.end method

.method private upgradeDatabaseToVersion40(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 4519
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_on_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4520
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_date_subject_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4521
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_on_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4522
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_date_subject_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4524
    const-string v0, "CREATE TRIGGER sms_update_thread_on_insert AFTER INSERT ON sms BEGIN  UPDATE threads SET    date = (strftime(\'%s\',\'now\') * 1000),     snippet = new.body,    snippet_cs = 0  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4553
    const-string v0, "CREATE TRIGGER sms_update_thread_date_subject_on_update AFTER  UPDATE OF date, body, type  ON sms BEGIN  UPDATE threads SET    date = (strftime(\'%s\',\'now\') * 1000),     snippet = new.body,    snippet_cs = 0  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4584
    const-string v0, "CREATE TRIGGER pdu_update_thread_on_insert AFTER INSERT ON pdu   WHEN new.m_type=132 OR new.m_type=130 OR new.m_type=128 BEGIN  UPDATE threads SET    date = (strftime(\'%s\',\'now\') * 1000),     snippet = new.sub,     snippet_cs = new.sub_cs  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0 AND thread_id = threads._id)      WHEN 0 THEN 1 ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4612
    const-string v0, "CREATE TRIGGER pdu_update_thread_date_subject_on_update AFTER  UPDATE OF date, sub, msg_box ON pdu   WHEN new.m_type=132 OR new.m_type=130 OR new.m_type=128 BEGIN  UPDATE threads SET    date = (strftime(\'%s\',\'now\') * 1000),     snippet = new.sub,     snippet_cs = new.sub_cs  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0 AND thread_id = threads._id)      WHEN 0 THEN 1 ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4640
    return-void
.end method

.method private upgradeDatabaseToVersion41(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 4643
    const-string v0, "DROP TRIGGER IF EXISTS update_threads_error_on_move_mms"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4644
    const-string v0, "CREATE TRIGGER update_threads_error_on_move_mms   BEFORE UPDATE OF msg_box ON pdu   WHEN (OLD.msg_box = 4 AND NEW.msg_box != 4)   AND (OLD._id IN (SELECT DISTINCT msg_id                   FROM pending_msgs                   WHERE err_type >= 10)) BEGIN   UPDATE threads SET error = error - 1  WHERE _id = OLD.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4654
    return-void
.end method

.method private upgradeDatabaseToVersion42(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 4657
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_on_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4658
    const-string v0, "DROP TRIGGER IF EXISTS delete_obsolete_threads_sms"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4659
    const-string v0, "DROP TRIGGER IF EXISTS update_threads_error_on_delete_sms"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4660
    return-void
.end method

.method private upgradeDatabaseToVersion43(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 4664
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createIncomingMessageView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 4665
    return-void
.end method

.method private upgradeDatabaseToVersion44(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 4803
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_on_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4805
    const-string v0, "CREATE TRIGGER pdu_update_thread_on_delete AFTER DELETE ON pdu BEGIN   UPDATE threads SET      date = (strftime(\'%s\',\'now\') * 1000)  WHERE threads._id = old.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = old.thread_id;   UPDATE threads SET snippet =    (SELECT snippet FROM     (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128      UNION SELECT date, body AS snippet, thread_id FROM sms)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET snippet_cs =    (SELECT snippet_cs FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4837
    return-void
.end method

.method private upgradeDatabaseToVersion46(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 4843
    :try_start_0
    const-string v1, "ALTER TABLE sms ADD COLUMN callback_number TEXT;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4846
    const-string v1, "ALTER TABLE sms ADD COLUMN priority INTEGER;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 4854
    :goto_0
    :try_start_1
    const-string v1, "ALTER TABLE sms ADD COLUMN index_on_sim INTEGER;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 4860
    :goto_1
    return-void

    .line 4848
    :catch_0
    move-exception v0

    .line 4849
    .local v0, ex:Ljava/lang/Throwable;
    const-string v1, "MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4856
    .end local v0           #ex:Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 4857
    .restart local v0       #ex:Ljava/lang/Throwable;
    const-string v1, "MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private upgradeDatabaseToVersion47(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 4940
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion46(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 4948
    :goto_0
    :try_start_1
    const-string v1, "ALTER TABLE sms ADD COLUMN locked INTEGER DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4949
    const-string v1, "ALTER TABLE pdu ADD COLUMN locked INTEGER DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4952
    const-string v1, "ALTER TABLE threads ADD COLUMN has_attachment INTEGER DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4954
    const-string v1, "ALTER TABLE part ADD COLUMN text TEXT"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4959
    const-string v1, "DROP VIEW IF EXISTS incoming_msg"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4960
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createIncomingMessageView(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 4969
    :goto_1
    :try_start_2
    const-string v1, "ALTER TABLE part ADD COLUMN seq INTEGER DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 4976
    :goto_2
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeTextFile2TextColumn(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 4980
    :goto_3
    return-void

    .line 4941
    :catch_0
    move-exception v0

    .line 4942
    .local v0, ex:Ljava/lang/Throwable;
    const-string v1, "MmsSmsDatabaseHelper"

    const-string v2, "upgradeDatabaseToVersion46 in upgradeDatabaseToVersion47() fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4963
    .end local v0           #ex:Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 4964
    .restart local v0       #ex:Ljava/lang/Throwable;
    const-string v1, "MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4965
    const-string v1, "MmsSmsDatabaseHelper"

    const-string v2, "upgradeDatabaseToVersion47() fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4970
    .end local v0           #ex:Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    .line 4971
    .restart local v0       #ex:Ljava/lang/Throwable;
    const-string v1, "MmsSmsDatabaseHelper"

    const-string v2, "upgrade seq in upgradeDatabaseToVersion47() fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 4977
    .end local v0           #ex:Ljava/lang/Throwable;
    :catch_3
    move-exception v0

    .line 4978
    .restart local v0       #ex:Ljava/lang/Throwable;
    const-string v1, "MmsSmsDatabaseHelper"

    const-string v2, "TextColumn in upgradeDatabaseToVersion47() fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private upgradeDatabaseToVersion48(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 4985
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_on_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4986
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_on_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4987
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_date_subject_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4988
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_date_subject_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4989
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_on_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4990
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_on_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4993
    const-string v0, "CREATE TRIGGER pdu_update_thread_on_insert AFTER INSERT ON pdu   WHEN new.m_type=132    OR new.m_type=130    OR new.m_type=128 BEGIN  UPDATE threads SET    date = (strftime(\'%s\',\'now\') * 1000),     snippet = new.sub,     snippet_cs = new.sub_cs,  priority = new.pri  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3        AND htc_category = 0) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND htc_category = 0        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128))       WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET unread_count =     (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND type = 1            AND htc_category = 0             AND thread_id = threads._id) +     (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND (m_type = 130            OR m_type = 132)             AND msg_box = 1            AND htc_category = 0             AND thread_id = threads._id)  WHERE threads._id = new.thread_id;   UPDATE threads SET snippet =    (SELECT snippet FROM     (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128          AND htc_category=0      UNION SELECT date, body AS snippet, thread_id FROM sms        WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET snippet_cs =    (SELECT snippet_cs FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET date =    (SELECT date FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4999
    const-string v0, "CREATE TRIGGER sms_update_thread_on_insert AFTER INSERT ON sms BEGIN  UPDATE threads SET    date = new.date,     snippet = new.body,     snippet_cs = 0  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3        AND htc_category = 0) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND htc_category = 0        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id            AND htc_category = 0) +         (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND htc_category = 0            AND (m_type=132              OR m_type=130)            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET unread_count =     (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND type = 1            AND htc_category = 0             AND thread_id = threads._id) +     (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND (m_type = 130            OR m_type = 132)             AND msg_box = 1            AND htc_category = 0             AND thread_id = threads._id)  WHERE threads._id = new.thread_id;   UPDATE threads SET snippet =    (SELECT snippet FROM     (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128          AND htc_category=0      UNION SELECT date, body AS snippet, thread_id FROM sms        WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET snippet_cs =    (SELECT snippet_cs FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET date =    (SELECT date FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5003
    const-string v0, "CREATE TRIGGER pdu_update_thread_date_subject_on_update AFTER  UPDATE OF date, sub, msg_box  ON pdu   WHEN new.m_type=132    OR new.m_type=130    OR new.m_type=128 BEGIN  UPDATE threads SET    date = (strftime(\'%s\',\'now\') * 1000),     snippet = new.sub,     snippet_cs = new.sub_cs,  priority = new.pri  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3        AND htc_category = 0) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND htc_category = 0        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128))       WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET unread_count =     (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND type = 1            AND htc_category = 0             AND thread_id = threads._id) +     (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND (m_type = 130            OR m_type = 132)             AND msg_box = 1            AND htc_category = 0             AND thread_id = threads._id)  WHERE threads._id = new.thread_id;   UPDATE threads SET snippet =    (SELECT snippet FROM     (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128          AND htc_category=0      UNION SELECT date, body AS snippet, thread_id FROM sms        WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET snippet_cs =    (SELECT snippet_cs FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET date =    (SELECT date FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5010
    const-string v0, "CREATE TRIGGER sms_update_thread_date_subject_on_update AFTER  UPDATE OF date, body, type  ON sms BEGIN  UPDATE threads SET    date = new.date,     snippet = new.body,     snippet_cs = 0  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3        AND htc_category = 0) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND htc_category = 0        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id            AND htc_category = 0) +         (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND htc_category = 0            AND (m_type=132              OR m_type=130)            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET unread_count =     (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND type = 1            AND htc_category = 0             AND thread_id = threads._id) +     (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND (m_type = 130            OR m_type = 132)             AND msg_box = 1            AND htc_category = 0             AND thread_id = threads._id)  WHERE threads._id = new.thread_id;   UPDATE threads SET snippet =    (SELECT snippet FROM     (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128          AND htc_category=0      UNION SELECT date, body AS snippet, thread_id FROM sms        WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET snippet_cs =    (SELECT snippet_cs FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET date =    (SELECT date FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5015
    const-string v0, "CREATE TRIGGER sms_update_thread_on_delete AFTER DELETE ON sms BEGIN   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND sms.type != 3        AND htc_category = 0) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND htc_category = 0        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = old.thread_id;   UPDATE threads SET unread_count =     (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND type = 1            AND htc_category = 0             AND thread_id = old.thread_id) +     (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND (m_type = 130            OR m_type = 132)             AND msg_box = 1            AND htc_category = 0            AND thread_id = old.thread_id)  WHERE threads._id = old.thread_id;   UPDATE threads SET snippet =    (SELECT snippet FROM     (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, body AS snippet, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET snippet_cs =    (SELECT snippet_cs FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET date =    (SELECT date FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET priority =    (SELECT priority FROM     (SELECT date * 1000 AS date, pri AS priority, thread_id FROM pdu        WHERE (m_type=132 OR m_type=130 OR m_type=128)          AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms        WHERE htc_category=0)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5025
    const-string v0, "CREATE TRIGGER pdu_update_thread_on_delete AFTER DELETE ON pdu BEGIN   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND sms.type != 3        AND htc_category = 0) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND htc_category = 0        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = old.thread_id;   UPDATE threads SET unread_count =     (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND type = 1            AND htc_category = 0             AND thread_id = old.thread_id) +     (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND (m_type = 130            OR m_type = 132)             AND msg_box = 1            AND htc_category = 0            AND thread_id = old.thread_id)  WHERE threads._id = old.thread_id;   UPDATE threads SET snippet =    (SELECT snippet FROM     (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, body AS snippet, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET snippet_cs =    (SELECT snippet_cs FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET date =    (SELECT date FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET priority =    (SELECT priority FROM     (SELECT date * 1000 AS date, pri AS priority, thread_id FROM pdu        WHERE (m_type=132 OR m_type=130 OR m_type=128)          AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms        WHERE htc_category=0)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5033
    return-void
.end method

.method private upgradeDatabaseToVersion49(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 5038
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createHtcMsgsTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 5039
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createHtcThreadsTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 5040
    invoke-static {}, Lcom/android/providers/telephony/AllMessagesProvider;->isSupportHtcMessages()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5041
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createHtcMsgsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 5042
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createIncomingMessageViewV2(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 5044
    :cond_0
    return-void
.end method

.method private upgradeDatabaseToVersion50(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 5050
    :try_start_0
    const-string v1, "ALTER TABLE pdu ADD COLUMN htc_category INTEGER DEFAULT 0;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5051
    const-string v1, "ALTER TABLE sms ADD COLUMN htc_category INTEGER DEFAULT 0;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5052
    const-string v1, "DROP VIEW IF EXISTS threads_list"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5053
    const-string v1, "DROP VIEW IF EXISTS incoming_msg"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5056
    const-string v1, "CREATE VIEW IF NOT EXISTS threads_list AS   SELECT _id,         T.norm_date AS date,         message_count,         recipient_ids,         recipient_address,         T.snippet AS snippet,         T.snippet_cs AS snippet_cs,         CASE T.htc_category WHEN 0 THEN read ELSE 1 END AS read,         unread_count,         body,         name,         priority,         type,         error,         has_attachment,         T.transport_type AS transport_type,         T.msg_box AS msg_box,         T.locked AS locked,         T.htc_category AS htc_category  FROM threads  LEFT JOIN (SELECT norm_date,                    snippet,                    snippet_cs,                    thread_id,                    transport_type,                    msg_box,                    locked,                    htc_category             FROM (SELECT date * 1000 AS norm_date,                          sub AS snippet,                          sub_cs AS snippet_cs,                          thread_id,                          \'mms\' AS transport_type,                          msg_box,                          locked,                          htc_category                   FROM pdu                   WHERE msg_box > 0                   UNION                   SELECT date AS norm_date,                          body AS snippet,                          0 AS snippet_cs,                          thread_id,                          \'sms\' AS transport_type,                          type AS msg_box,                          locked,                          htc_category                   FROM sms                   WHERE type > 0)             GROUP BY thread_id, htc_category) T  ON threads._id = T.thread_id"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5110
    const-string v1, "CREATE VIEW incoming_msg AS SELECT transport_type, _id, thread_id, address, body, normalized_date,    sub, sub_cs, read, m_type, priority  FROM (SELECT DISTINCT \'sms\' AS transport_type, _id, thread_id, address,            body, date AS normalized_date, NULL as sub, NULL as sub_cs,            read, NULL AS m_type, priority FROM sms          WHERE (type = 1 AND htc_category = 0)        UNION        SELECT DISTINCT \'mms\' AS transport_type, _id, thread_id,             (SELECT address from addr              WHERE addr.msg_id = pdu._id) as address,            NULL AS body, date * 1000 AS normalized_date,            sub, sub_cs, read, m_type, pri AS priority FROM pdu          WHERE ((m_type = 130 OR m_type = 132) AND htc_category = 0 AND msg_box > 0)  ORDER BY normalized_date ASC)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5128
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->dropCommonTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 5129
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->dropMmsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 5131
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createCommonTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 5132
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createMmsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 5137
    :goto_0
    return-void

    .line 5134
    :catch_0
    move-exception v0

    .line 5135
    .local v0, ex:Ljava/lang/Throwable;
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got exception upgrade database version 50: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private upgradeDatabaseToVersion51(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 5143
    :try_start_0
    const-string v0, "ALTER TABLE sms ADD COLUMN cs_timestamp LONG DEFAULT -1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5146
    const-string v0, "ALTER TABLE sms ADD COLUMN cs_id TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5150
    const-string v0, "ALTER TABLE pdu ADD COLUMN cs_timestamp LONG DEFAULT -1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5153
    const-string v0, "ALTER TABLE pdu ADD COLUMN cs_id TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 5159
    :goto_0
    return-void

    .line 5156
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private upgradeDatabaseToVersion52(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 5163
    :try_start_0
    const-string v0, "ALTER TABLE sms ADD COLUMN cs_synced INTEGER DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5166
    const-string v0, "ALTER TABLE pdu ADD COLUMN cs_synced INTEGER DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5170
    const-string v0, "CREATE TRIGGER update_sms_synced_flag AFTER UPDATE OF read, locked, status ON sms BEGIN  UPDATE sms SET cs_synced = \'0\' WHERE sms._id = old._id AND (sms.type = 1 or sms.type = 2); END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5176
    const-string v0, "CREATE TRIGGER update_pdu_synced_flag AFTER UPDATE OF read, locked ON pdu BEGIN  UPDATE pdu SET cs_synced = \'0\' WHERE pdu._id = old._id AND (pdu.msg_box = 1 or pdu.msg_box = 2); END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 5186
    :goto_0
    return-void

    .line 5183
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private upgradeDatabaseToVersion53(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 5190
    const-string v0, "MmsSmsDatabaseHelper"

    const-string v1, "upgrade to version 53 > (sync secure folder function)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5193
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion50(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 5194
    return-void
.end method

.method private upgradeDatabaseToVersion54(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 5198
    const-string v0, "MmsSmsDatabaseHelper"

    const-string v1, "update to version 54> (sync connected service codes about sms in version 51)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5208
    const-string v0, "CREATE TABLE temp_sms (_id INTEGER PRIMARY KEY,thread_id INTEGER,toa INTEGER DEFAULT 0,address TEXT,person INTEGER,date INTEGER,protocol INTEGER,read INTEGER DEFAULT 0,status INTEGER DEFAULT -1,type INTEGER,reply_path_present INTEGER,subject TEXT,body TEXT,sc_toa INTEGER DEFAULT 0,report_date INTEGER,service_center TEXT,locked INTEGER DEFAULT 0,index_on_sim INTEGER DEFAULT -1,callback_number TEXT,priority INTEGER DEFAULT 0,htc_category INTEGER DEFAULT 0,cs_timestamp LONG DEFAULT -1, cs_id TEXT, cs_synced INTEGER DEFAULT 0 );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5246
    const-string v0, "INSERT INTO temp_sms SELECT _id, thread_id, toa, address, person, date, protocol, read, status, type, reply_path_present, subject, body, sc_toa, report_date, service_center, locked, index_on_sim, callback_number, priority, htc_category, -1 AS cs_timestamp, \'\' AS cs_id, 0 AS cs_synced FROM sms;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5252
    const-string v0, "DROP TABLE IF EXISTS sms;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5253
    const-string v0, "ALTER TABLE temp_sms RENAME TO sms;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5254
    return-void
.end method

.method private upgradeDatabaseToVersion55(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 5257
    const-string v0, "MmsSmsDatabaseHelper"

    const-string v1, "update to version 55> (sync connected service codes about pdu in version 51)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5267
    const-string v0, "CREATE TABLE temp_pdu (_id INTEGER PRIMARY KEY,thread_id INTEGER,date INTEGER,msg_box INTEGER,read INTEGER DEFAULT 0,m_id TEXT,sub TEXT,sub_cs INTEGER,ct_t TEXT,ct_l TEXT,exp INTEGER,m_cls TEXT,m_type INTEGER,v INTEGER,m_size INTEGER,pri INTEGER,rr INTEGER,rpt_a INTEGER,resp_st INTEGER,st INTEGER,tr_id TEXT,retr_st INTEGER,retr_txt TEXT,retr_txt_cs INTEGER,read_status INTEGER,ct_cls INTEGER,resp_txt TEXT,d_tm INTEGER,d_rpt INTEGER,locked INTEGER DEFAULT 0,htc_category INTEGER DEFAULT 0,cs_timestamp LONG DEFAULT -1, cs_id TEXT, cs_synced INTEGER DEFAULT 0 );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5307
    const-string v0, "INSERT INTO temp_pdu SELECT _id, thread_id, date, msg_box, read, m_id, sub, sub_cs, ct_t, ct_l, exp, m_cls, m_type, v, m_size, pri, rr, rpt_a, resp_st, st, tr_id, retr_st, retr_txt, retr_txt_cs, read_status, ct_cls, resp_txt, d_tm, d_rpt, locked, htc_category, -1 AS cs_timestamp, \'\' AS cs_id, 0 AS cs_synced FROM pdu;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5313
    const-string v0, "DROP TABLE IF EXISTS pdu;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5314
    const-string v0, "ALTER TABLE temp_pdu RENAME TO pdu;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5315
    return-void
.end method

.method private upgradeDatabaseToVersion56(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 5318
    const-string v0, "MmsSmsDatabaseHelper"

    const-string v1, "update to version 56> re-create all triggers"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5323
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->dropCommonTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 5324
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->dropMmsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 5325
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createCommonTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 5326
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createMmsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 5327
    return-void
.end method

.method private upgradeDatabaseToVersion60(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .parameter "db"

    .prologue
    .line 5331
    const-string v3, "MmsSmsDatabaseHelper"

    const-string v4, "update to version 60> upgrade to Froyo"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5336
    const-string v3, "DROP VIEW IF EXISTS threads_list"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5338
    const-string v3, "CREATE VIEW IF NOT EXISTS threads_list AS   SELECT _id,         T.norm_date AS date,         message_count,         recipient_ids,         recipient_address,         T.snippet AS snippet,         T.snippet_cs AS snippet_cs,         CASE T.htc_category WHEN 0 THEN read ELSE 1 END AS read,         unread_count,         body,         name,         priority,         type,         error,         has_attachment,         T.transport_type AS transport_type,         T.msg_box AS msg_box,         T.locked AS locked,         T.htc_category AS htc_category  FROM threads  LEFT JOIN (SELECT norm_date,                    snippet,                    snippet_cs,                    thread_id,                    transport_type,                    msg_box,                    locked,                    htc_category             FROM (SELECT date * 1000 AS norm_date,                          sub AS snippet,                          sub_cs AS snippet_cs,                          thread_id,                          \'mms\' AS transport_type,                          msg_box,                          locked,                          htc_category                   FROM pdu                   WHERE msg_box > 0                   UNION                   SELECT date AS norm_date,                          body AS snippet,                          0 AS snippet_cs,                          thread_id,                          \'sms\' AS transport_type,                          type AS msg_box,                          locked,                          htc_category                   FROM sms                   WHERE type > 0)             GROUP BY thread_id, htc_category) T  ON threads._id = T.thread_id"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5396
    const-string v3, "DROP VIEW IF EXISTS incoming_msg"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5398
    const-string v3, "CREATE VIEW incoming_msg AS SELECT transport_type, _id, thread_id, address, body, normalized_date,    sub, sub_cs, read, m_type, priority  FROM (SELECT DISTINCT \'sms\' AS transport_type, _id, thread_id, address,            body, date AS normalized_date, NULL as sub, NULL as sub_cs,            read, NULL AS m_type, priority FROM sms          WHERE (type = 1 AND htc_category = 0)        UNION        SELECT DISTINCT \'mms\' AS transport_type, _id, thread_id,             (SELECT address from addr              WHERE addr.msg_id = pdu._id) as address,            NULL AS body, date * 1000 AS normalized_date,            sub, sub_cs, read, m_type, pri AS priority FROM pdu          WHERE ((m_type = 130 OR m_type = 132) AND htc_category = 0 AND msg_box > 0)  ORDER BY normalized_date ASC)"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5414
    const-string v3, "DROP VIEW IF EXISTS incoming_msg_v2"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5416
    const-string v3, "CREATE VIEW incoming_msg_v2 AS SELECT transport_type, _id, thread_id, address, body, normalized_date,  sub, sub_cs, read, m_type, priority, htcthread_id, vvm_id, ptime,  is_private,  is_urgent, vvm_type FROM (SELECT DISTINCT \'sms\' AS transport_type, sms._id AS _id,         sms.thread_id AS thread_id, address, body,        date AS normalized_date, NULL AS sub, NULL as sub_cs, read,        NULL AS m_type, priority, htcthread_id, NULL AS vvm_id, NULL AS ptime,         NULL AS is_private, NULL AS is_urgent, NULL AS vvm_type       FROM sms LEFT JOIN (SELECT _id AS htcthread_id, thread_id AS threads_id FROM htcthreads)        ON threads_id = sms.thread_id      WHERE sms.type = 1      UNION      SELECT DISTINCT \'mms\' AS transport_type, pdu._id AS _id, pdu.thread_id AS thread_id,        (SELECT address from addr WHERE addr.msg_id = pdu._id) as address,        NULL AS body, date * 1000 AS normalized_date, sub, sub_cs, read, m_type,        pri AS priority, htcthread_id, NULL AS vvm_id, NULL AS ptime, NULL AS is_private,        NULL AS is_urgent, NULL AS vvm_type       FROM pdu LEFT JOIN (SELECT _id AS htcthread_id, thread_id AS threads_id FROM htcthreads)        ON threads_id = pdu.thread_id      WHERE m_type = 130 OR m_type = 132      UNION      SELECT DISTINCT htcmsgs.msg_type AS transport_type, htcmsgs._id AS _id, thread_id,         address, NULL AS body, date AS normalized_date, NULL AS sub, NULL AS sub_cs, read,         NULL AS m_type, NULL AS priority, htcthread_id, vvm_id, ptime,         htcmsgs.is_private AS is_private, htcmsgs.is_urgent AS is_urgent, type AS vvm_type      FROM htcmsgs LEFT JOIN (SELECT _id AS htcthreads_id, thread_id FROM htcthreads)      ON htcthreads_id = htcmsgs.htcthread_id      ORDER BY normalized_date ASC)"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5446
    invoke-static {}, Lcom/android/providers/telephony/AllMessagesProvider;->isSupportHtcMessages()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5449
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->dropHtcMsgsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 5450
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createHtcMsgsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 5459
    :cond_0
    :try_start_0
    const-string v3, "ALTER TABLE sms ADD COLUMN error_code INTEGER DEFAULT 0"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5466
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createWordsTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 5467
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createThreadIdIndex(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 5475
    :try_start_1
    const-string v3, "ALTER TABLE sms add COLUMN seen INTEGER DEFAULT 0"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5476
    const-string v3, "ALTER TABLE pdu add COLUMN seen INTEGER DEFAULT 0"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 5484
    :goto_1
    :try_start_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5485
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v3, "seen"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5486
    const-string v3, "sms"

    const-string v4, "read=1"

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 5487
    .local v1, count:I
    const-string v3, "MmsSmsDatabaseHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MmsSmsDb] upgradeDatabaseToVersion60: updated "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rows in sms table to have READ=1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5489
    const-string v3, "pdu"

    const-string v4, "read=1"

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 5490
    const-string v3, "MmsSmsDatabaseHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MmsSmsDb] upgradeDatabaseToVersion60: updated "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rows in pdu table to have READ=1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 5496
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v1           #count:I
    :goto_2
    const-string v3, "DROP TRIGGER IF EXISTS pdu_update_thread_read_on_update"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5499
    const-string v3, "CREATE TRIGGER pdu_update_thread_read_on_update AFTER  UPDATE OF read, htc_category   ON pdu   WHEN new.m_type=132    OR new.m_type=130    OR new.m_type=128 BEGIN   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128))       WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET unread_count =     (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND type = 1            AND htc_category = 0             AND thread_id = threads._id) +     (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND (m_type = 130            OR m_type = 132)             AND msg_box = 1            AND htc_category = 0             AND thread_id = threads._id)  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5516
    return-void

    .line 5460
    :catch_0
    move-exception v2

    .line 5461
    .local v2, ex:Ljava/lang/Exception;
    const-string v3, "MmsSmsDatabaseHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got exception altering table sms add column error_code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5477
    .end local v2           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 5478
    .restart local v2       #ex:Ljava/lang/Exception;
    const-string v3, "MmsSmsDatabaseHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got exception altering table sms, pdu add column seen: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 5492
    .end local v2           #ex:Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 5493
    .restart local v2       #ex:Ljava/lang/Exception;
    const-string v3, "MmsSmsDatabaseHelper"

    const-string v4, "[MmsSmsDb] upgradeDatabaseToVersion60 caught "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private upgradeDatabaseToVersion61(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 5521
    const-string v0, "MmsSmsDatabaseHelper"

    const-string v1, "update to version 61> add locked for widget"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5523
    const-string v0, "DROP VIEW IF EXISTS incoming_msg"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5525
    const-string v0, "CREATE VIEW incoming_msg AS SELECT transport_type, _id, thread_id, address, body, normalized_date,\t sub, sub_cs, read, m_type, priority, locked  FROM (SELECT DISTINCT \'sms\' AS transport_type, _id, thread_id, address,\t\t\t body, date AS normalized_date, NULL as sub, NULL as sub_cs,\t\t\t read, NULL AS m_type, priority, locked FROM sms\t\t   WHERE (type = 1 AND htc_category = 0)\t\t UNION\t\t SELECT DISTINCT \'mms\' AS transport_type, _id, thread_id, \t\t\t (SELECT address from addr \t\t\t  WHERE addr.msg_id = pdu._id) as address,\t\t\t NULL AS body, date * 1000 AS normalized_date,\t\t\t sub, sub_cs, read, m_type, pri AS priority,locked FROM pdu\t\t   WHERE ((m_type = 130 OR m_type = 132) AND htc_category = 0 AND msg_box > 0)  ORDER BY normalized_date ASC)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5541
    const-string v0, "DROP VIEW IF EXISTS incoming_msg_v2"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5545
    const-string v0, "CREATE VIEW incoming_msg_v2 AS SELECT transport_type, _id, thread_id, address, body, normalized_date,  sub, sub_cs, read, m_type, priority, locked, htcthread_id, vvm_id, ptime,  is_private,\tis_urgent, vvm_type FROM (SELECT DISTINCT \'sms\' AS transport_type, sms._id AS _id, \t\t sms.thread_id AS thread_id, address, body,\t\t date AS normalized_date, NULL AS sub, NULL as sub_cs, read,\t\t NULL AS m_type, priority, locked, htcthread_id, NULL AS vvm_id, NULL AS ptime, \t\t NULL AS is_private, NULL AS is_urgent, NULL AS vvm_type \t   FROM sms LEFT JOIN (SELECT _id AS htcthread_id, thread_id AS threads_id FROM htcthreads)\t\t ON threads_id = sms.thread_id\t   WHERE sms.type = 1\t   UNION\t   SELECT DISTINCT \'mms\' AS transport_type, pdu._id AS _id, pdu.thread_id AS thread_id,\t\t (SELECT address from addr WHERE addr.msg_id = pdu._id) as address,\t\t NULL AS body, date * 1000 AS normalized_date, sub, sub_cs, read, m_type,\t\t pri AS priority, locked , htcthread_id, NULL AS vvm_id, NULL AS ptime, NULL AS is_private,\t\t NULL AS is_urgent, NULL AS vvm_type \t   FROM pdu LEFT JOIN (SELECT _id AS htcthread_id, thread_id AS threads_id FROM htcthreads)\t\t ON threads_id = pdu.thread_id\t   WHERE m_type = 130 OR m_type = 132\t   UNION\t   SELECT DISTINCT htcmsgs.msg_type AS transport_type, htcmsgs._id AS _id, thread_id, \t\t address, NULL AS body, date AS normalized_date, NULL AS sub, NULL AS sub_cs, read, \t\t NULL AS m_type, NULL AS priority, NULL AS locked, htcthread_id, vvm_id, ptime, \t\t htcmsgs.is_private AS is_private, htcmsgs.is_urgent AS is_urgent, type AS vvm_type\t   FROM htcmsgs LEFT JOIN (SELECT _id AS htcthreads_id, thread_id FROM htcthreads)\t   ON htcthreads_id = htcmsgs.htcthread_id\t   ORDER BY normalized_date ASC)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5574
    return-void
.end method

.method private upgradeDatabaseToVersion62(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 5577
    const-string v0, "MmsSmsDatabaseHelper"

    const-string v1, "update to version 62> add colume err_type for threads_list View"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5582
    const-string v0, "DROP VIEW IF EXISTS threads_list"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5584
    const-string v0, "CREATE VIEW IF NOT EXISTS threads_list AS   SELECT _id,         T.norm_date AS date,         T.message_count AS message_count,         recipient_ids,         recipient_address,         T.snippet AS snippet,         T.snippet_cs AS snippet_cs,         CASE T.htc_category WHEN 0 THEN read ELSE 1 END AS read,         unread_count,         body,         name,         priority,         type,         error,         has_attachment,         T.transport_type AS transport_type,         T.msg_box AS msg_box,         T.locked AS locked,         T.htc_category AS htc_category,         T.err_type AS err_type  FROM threads  LEFT JOIN (SELECT COUNT(*) AS message_count, norm_date,                    snippet,                    snippet_cs,                    thread_id,                    transport_type,                    msg_box,                    locked,                    htc_category,                    err_type             FROM (SELECT date * 1000 AS norm_date,                          sub AS snippet,                          sub_cs AS snippet_cs,                          thread_id,                          \'mms\' AS transport_type,                          msg_box,                          locked,                          htc_category,                          err_type                   FROM pdu LEFT JOIN pending_msgs ON pdu._id = pending_msgs.msg_id                   WHERE msg_box > 0                   UNION                   SELECT date AS norm_date,                          body AS snippet,                          0 AS snippet_cs,                          thread_id,                          \'sms\' AS transport_type,                          type AS msg_box,                          locked,                          htc_category,                          error_code AS err_type                   FROM sms                   WHERE type > 0)             GROUP BY thread_id, htc_category) T  ON threads._id = T.thread_id"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5640
    return-void
.end method

.method private upgradeDatabaseToVersion63(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 5643
    invoke-static {}, Lcom/android/providers/telephony/util/TelephUtils;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 5647
    .local v0, isCdmaFormat:I
    :goto_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ALTER TABLE sms ADD COLUMN is_cdma_format INTEGER DEFAULT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 5652
    :goto_1
    return-void

    .line 5643
    .end local v0           #isCdmaFormat:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 5649
    .restart local v0       #isCdmaFormat:I
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private upgradeDatabaseToVersion64(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .parameter "db"

    .prologue
    .line 5930
    const-string v2, "MmsSmsDatabaseHelper"

    const-string v3, "update to version 64>"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5936
    :try_start_0
    invoke-static {}, Lcom/android/providers/telephony/util/TelephUtils;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 5939
    .local v1, isCdmaFormat:I
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CREATE TABLE temp_sms (_id INTEGER PRIMARY KEY,thread_id INTEGER,toa INTEGER DEFAULT 0,address TEXT,person INTEGER,date INTEGER,protocol INTEGER,read INTEGER DEFAULT 0,status INTEGER DEFAULT -1,type INTEGER,reply_path_present INTEGER,subject TEXT,body TEXT,sc_toa INTEGER DEFAULT 0,report_date INTEGER,service_center TEXT,locked INTEGER DEFAULT 0,index_on_sim TEXT,callback_number TEXT,priority INTEGER DEFAULT 0,htc_category INTEGER DEFAULT 0,cs_timestamp LONG DEFAULT -1, cs_id TEXT, cs_synced INTEGER DEFAULT 0, error_code INTEGER DEFAULT 0,seen INTEGER DEFAULT 0, is_cdma_format INTEGER DEFAULT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ");"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5969
    const-string v2, "INSERT INTO temp_sms SELECT * FROM sms;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5970
    const-string v2, "DROP TABLE IF EXISTS sms;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5971
    const-string v2, "ALTER TABLE temp_sms RENAME TO sms;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5975
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createSmsTriggersVersion64(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5980
    .end local v1           #isCdmaFormat:I
    :goto_1
    return-void

    .line 5936
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 5977
    :catch_0
    move-exception v0

    .line 5978
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "MmsSmsDatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "alter sms column fail(version 64): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private upgradeDatabaseToVersion65(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 35
    .parameter "db"

    .prologue
    .line 6232
    const-string v31, "MmsSmsDatabaseHelper"

    const-string v32, "update to version 65>"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6234
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->dropHtcMsgsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 6238
    const-string v17, "SELECT _id, recipient_ids, recipient_address, date FROM threads"

    .line 6239
    .local v17, rawQuery:Ljava/lang/String;
    const/16 v31, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 6241
    .local v6, c:Landroid/database/Cursor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    .line 6244
    .local v27, time:J
    const/16 v20, 0x0

    .line 6245
    .local v20, sqlstatement:Landroid/database/sqlite/SQLiteStatement;
    const/16 v19, 0x0

    .line 6246
    .local v19, sqlInsertstatement:Landroid/database/sqlite/SQLiteStatement;
    const-string v5, "Update htcthreads SET thread_id=?, recipient_ids=?, recipient_address=? WHERE (recipient_ids=?)"

    .line 6250
    .local v5, UpdateSQLCommand:Ljava/lang/String;
    const-string v4, "insert into htcthreads (thread_id, recipient_ids, recipient_address, latest_date) values (?,?,?,?)"

    .line 6255
    .local v4, InsertSQLCommand:Ljava/lang/String;
    const/16 v18, 0x0

    .line 6256
    .local v18, size:I
    const/4 v12, 0x0

    .line 6257
    .local v12, iCount:I
    const/16 v24, 0x0

    .line 6258
    .local v24, tempThreadID:[Ljava/lang/Long;
    const/16 v21, 0x0

    .line 6259
    .local v21, tempDate1:[Ljava/lang/Long;
    const/16 v23, 0x0

    .line 6260
    .local v23, tempRecipientID:[Ljava/lang/String;
    const/16 v22, 0x0

    .line 6263
    .local v22, tempRecipientAddress:[Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 6264
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v18

    .line 6265
    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Long;

    move-object/from16 v24, v0

    .line 6266
    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    .line 6267
    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    .line 6268
    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Long;

    move-object/from16 v21, v0

    .line 6270
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v31

    if-eqz v31, :cond_1

    .line 6271
    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    .line 6272
    .local v25, thread_id:J
    const/16 v31, 0x1

    move/from16 v0, v31

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 6273
    .local v16, rIds:Ljava/lang/String;
    const/16 v31, 0x2

    move/from16 v0, v31

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 6274
    .local v15, rAddress:Ljava/lang/String;
    const/16 v31, 0x3

    move/from16 v0, v31

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v7

    .line 6288
    .local v7, date:J
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v20

    .line 6289
    const/16 v31, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v31

    move-wide/from16 v2, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 6290
    const/16 v31, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v31

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 6291
    const/16 v31, 0x3

    move-object/from16 v0, v20

    move/from16 v1, v31

    invoke-virtual {v0, v1, v15}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 6292
    invoke-virtual/range {v20 .. v20}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v13

    .line 6293
    .local v13, id:J
    const-wide/16 v31, 0x0

    cmp-long v31, v13, v31

    if-gez v31, :cond_0

    .line 6296
    const/16 v31, 0x3

    move/from16 v0, v31

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    aput-object v31, v21, v12

    .line 6297
    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    aput-object v31, v24, v12

    .line 6298
    aput-object v16, v23, v12

    .line 6299
    aput-object v15, v22, v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 6301
    add-int/lit8 v12, v12, 0x1

    .line 6311
    :cond_0
    :try_start_2
    invoke-virtual/range {v20 .. v20}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 6333
    .end local v7           #date:J
    .end local v13           #id:J
    .end local v15           #rAddress:Ljava/lang/String;
    .end local v16           #rIds:Ljava/lang/String;
    .end local v25           #thread_id:J
    :catchall_0
    move-exception v31

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v31

    .line 6304
    .restart local v7       #date:J
    .restart local v15       #rAddress:Ljava/lang/String;
    .restart local v16       #rIds:Ljava/lang/String;
    .restart local v25       #thread_id:J
    :catch_0
    move-exception v9

    .line 6306
    .local v9, e:Landroid/database/SQLException;
    :try_start_3
    const-string v31, "MmsSmsDatabaseHelper"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "can not update htcthreads table from threads. "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v9}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 6311
    :try_start_4
    invoke-virtual/range {v20 .. v20}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto/16 :goto_0

    .end local v9           #e:Landroid/database/SQLException;
    :catchall_1
    move-exception v31

    invoke-virtual/range {v20 .. v20}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v31
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 6333
    .end local v7           #date:J
    .end local v15           #rAddress:Ljava/lang/String;
    .end local v16           #rIds:Ljava/lang/String;
    .end local v25           #thread_id:J
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 6341
    :cond_2
    :try_start_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v19

    .line 6342
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    if-ge v11, v12, :cond_3

    .line 6344
    const/16 v31, 0x1

    aget-object v32, v24, v11

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    move-object/from16 v0, v19

    move/from16 v1, v31

    move-wide/from16 v2, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 6345
    const/16 v31, 0x2

    aget-object v32, v23, v11

    move-object/from16 v0, v19

    move/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 6346
    const/16 v31, 0x3

    aget-object v32, v22, v11

    move-object/from16 v0, v19

    move/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 6347
    const/16 v31, 0x4

    aget-object v32, v21, v11

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    move-object/from16 v0, v19

    move/from16 v1, v31

    move-wide/from16 v2, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 6348
    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_1

    .line 6342
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 6359
    :cond_3
    const/16 v24, 0x0

    .line 6360
    const/16 v23, 0x0

    .line 6361
    const/16 v22, 0x0

    .line 6362
    const/16 v21, 0x0

    .line 6363
    if-eqz v19, :cond_4

    .line 6365
    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 6368
    .end local v11           #i:I
    :cond_4
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29

    .line 6369
    .local v29, time1:J
    const-string v31, "MmsSmsDatabaseHelper"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Update And Insert htcthreads Time: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sub-long v33, v29, v27

    invoke-virtual/range {v32 .. v34}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6371
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createHtcMsgsTriggersVersion65(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 6374
    const-string v31, "DROP TABLE IF EXISTS contacts1"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6375
    const-string v31, "DROP TABLE IF EXISTS contacts2"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6377
    const-string v31, "CREATE TABLE IF NOT EXISTS contacts1  (thread_id INTEGER,  htcthread_id INTEGER DEFAULT 0,  contact_id INTEGER DEFAULT 0);"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6382
    const-string v31, "CREATE TABLE IF NOT EXISTS contacts2  (thread_id INTEGER,  htcthread_id INTEGER DEFAULT 0,  contact_id INTEGER DEFAULT 0);"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6389
    :try_start_6
    const-string v31, "ALTER TABLE htcmsgs ADD COLUMN htc_category INTEGER DEFAULT 0;"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6390
    const-string v31, "ALTER TABLE htcmsgs ADD COLUMN locked INTEGER DEFAULT 0"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 6479
    :goto_3
    return-void

    .line 6352
    .end local v29           #time1:J
    :catch_1
    move-exception v9

    .line 6354
    .restart local v9       #e:Landroid/database/SQLException;
    :try_start_7
    const-string v31, "MmsSmsDatabaseHelper"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "can not Insert htcthreads table from threads. "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v9}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 6359
    const/16 v24, 0x0

    .line 6360
    const/16 v23, 0x0

    .line 6361
    const/16 v22, 0x0

    .line 6362
    const/16 v21, 0x0

    .line 6363
    if-eqz v19, :cond_4

    .line 6365
    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto/16 :goto_2

    .line 6359
    .end local v9           #e:Landroid/database/SQLException;
    :catchall_2
    move-exception v31

    const/16 v24, 0x0

    .line 6360
    const/16 v23, 0x0

    .line 6361
    const/16 v22, 0x0

    .line 6362
    const/16 v21, 0x0

    .line 6363
    if-eqz v19, :cond_5

    .line 6365
    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_5
    throw v31

    .line 6391
    .restart local v29       #time1:J
    :catch_2
    move-exception v10

    .line 6392
    .local v10, ex:Ljava/lang/Exception;
    const-string v31, "MmsSmsDatabaseHelper"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "got exception altering table htcmsgs add column htc_category, locked: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private upgradeDatabaseToVersion66(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 6484
    const-string v0, "MmsSmsDatabaseHelper"

    const-string v1, "update to version 66>"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6487
    :try_start_0
    const-string v0, "ALTER TABLE sms ADD COLUMN is_evdo INTEGER DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 6494
    :goto_0
    const-string v0, "DROP VIEW IF EXISTS incoming_msg"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6496
    const-string v0, "CREATE VIEW incoming_msg AS SELECT transport_type, _id, thread_id, address, body, normalized_date,\t sub, sub_cs, read, m_type, priority, locked, is_evdo  FROM (SELECT DISTINCT \'sms\' AS transport_type, _id, thread_id, address,\t\t\t body, date AS normalized_date, NULL as sub, NULL as sub_cs,\t\t\t read, NULL AS m_type, priority, locked, is_evdo FROM sms\t\t   WHERE (type = 1 AND htc_category = 0)\t\t UNION\t\t SELECT DISTINCT \'mms\' AS transport_type, _id, thread_id, \t\t\t (SELECT address from addr \t\t\t  WHERE addr.msg_id = pdu._id) as address,\t\t\t NULL AS body, date * 1000 AS normalized_date,\t\t\t sub, sub_cs, read, m_type, pri AS priority,locked, 0 AS is_evdo FROM pdu\t\t   WHERE ((m_type = 130 OR m_type = 132) AND htc_category = 0 AND msg_box > 0)  ORDER BY normalized_date ASC)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6512
    const-string v0, "DROP VIEW IF EXISTS incoming_msg_v2"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6516
    const-string v0, "CREATE VIEW incoming_msg_v2 AS SELECT transport_type, _id, thread_id, address, body, normalized_date,  sub, sub_cs, read, m_type, priority, locked, htcthread_id, vvm_id, ptime,  is_private,\tis_urgent, vvm_type, is_evdo FROM (SELECT DISTINCT \'sms\' AS transport_type, sms._id AS _id, \t\t sms.thread_id AS thread_id, address, body,\t\t date AS normalized_date, NULL AS sub, NULL as sub_cs, read,\t\t NULL AS m_type, priority, locked, htcthread_id, NULL AS vvm_id, NULL AS ptime, \t\t NULL AS is_private, NULL AS is_urgent, NULL AS vvm_type, is_evdo \t   FROM sms LEFT JOIN (SELECT _id AS htcthread_id, thread_id AS threads_id FROM htcthreads)\t\t ON threads_id = sms.thread_id\t   WHERE sms.type = 1\t   UNION\t   SELECT DISTINCT \'mms\' AS transport_type, pdu._id AS _id, pdu.thread_id AS thread_id,\t\t (SELECT address from addr WHERE addr.msg_id = pdu._id) as address,\t\t NULL AS body, date * 1000 AS normalized_date, sub, sub_cs, read, m_type,\t\t pri AS priority, locked , htcthread_id, NULL AS vvm_id, NULL AS ptime, NULL AS is_private,\t\t NULL AS is_urgent, NULL AS vvm_type, 0 AS is_evdo\t   FROM pdu LEFT JOIN (SELECT _id AS htcthread_id, thread_id AS threads_id FROM htcthreads)\t\t ON threads_id = pdu.thread_id\t   WHERE m_type = 130 OR m_type = 132\t   UNION\t   SELECT DISTINCT htcmsgs.msg_type AS transport_type, htcmsgs._id AS _id, thread_id, \t\t address, NULL AS body, date AS normalized_date, NULL AS sub, NULL AS sub_cs, read, \t\t NULL AS m_type, NULL AS priority, NULL AS locked, htcthread_id, vvm_id, ptime, \t\t htcmsgs.is_private AS is_private, htcmsgs.is_urgent AS is_urgent, type AS vvm_type, 0 AS is_evdo\t   FROM htcmsgs LEFT JOIN (SELECT _id AS htcthreads_id, thread_id FROM htcthreads)\t   ON htcthreads_id = htcmsgs.htcthread_id\t   ORDER BY normalized_date ASC)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6546
    return-void

    .line 6489
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private upgradeDatabaseToVersion67(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 6615
    const-string v0, "MmsSmsDatabaseHelper"

    const-string v1, "update to version 67>"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6617
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createThreadsListView67(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 6620
    const-string v0, "DROP VIEW IF EXISTS incoming_msg_contactbase_non_vvm"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6624
    const-string v0, "CREATE VIEW incoming_msg_contactbase_non_vvm AS SELECT transport_type, _id, thread_id, address, body, normalized_date, sub, sub_cs, read, m_type, priority, locked, is_evdo, contact_id, content_type FROM ( \tSELECT DISTINCT \'sms\' AS transport_type, sms._id AS _id, \t\tsms.thread_id AS thread_id, address, body, \t\tdate AS normalized_date, NULL AS sub, NULL as sub_cs, read, \t\tNULL AS m_type, priority, locked, is_evdo, contact_id, NULL as content_type \t\t\tFROM sms LEFT JOIN (SELECT thread_id AS thread_id_from_contact, contact_id FROM contacts1) \t\t\t\tON thread_id_from_contact = sms.thread_id \tWHERE (sms.type = 1 AND htc_category = 0) UNION \tSELECT DISTINCT \'mms\' AS transport_type, pdu._id AS _id, \t\tpdu.thread_id AS thread_id, (SELECT address from addr WHERE addr.msg_id = pdu._id) as address, NULL AS body, \t\tdate * 1000 AS normalized_date, sub, sub_cs, read, \t\tm_type,pri AS priority, locked , 0 AS is_evdo, contact_id, ct_t AS content_type \t\t\tFROM pdu LEFT JOIN (SELECT thread_id AS thread_id_from_contact, contact_id FROM contacts1) \t\t\t\tON thread_id_from_contact = pdu.thread_id \tWHERE ((m_type = 130 OR m_type = 132) AND htc_category = 0 AND msg_box > 0) ) ORDER BY normalized_date ASC "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6647
    const-string v0, "DROP VIEW IF EXISTS incoming_msg_contactbase_vvm"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6651
    const-string v0, "CREATE VIEW incoming_msg_contactbase_vvm AS SELECT transport_type, _id, thread_id, address, body, normalized_date, sub, sub_cs, read, m_type, priority, locked, htcthread_id, vvm_id, ptime, is_private, is_urgent, vvm_type, is_evdo, contact_id, content_type  FROM ( \tSELECT DISTINCT \'sms\' AS transport_type, sms._id AS _id, \t\tsms.thread_id AS thread_id, address, body, \t\tdate AS normalized_date, NULL AS sub, NULL as sub_cs, read, \t\tNULL AS m_type, priority, locked, htcthread_id, NULL AS vvm_id, NULL AS ptime, \t\tNULL AS is_private, NULL AS is_urgent, NULL AS vvm_type, is_evdo, contact_id, NULL as content_type \t\t\tFROM sms LEFT JOIN (SELECT htcthread_id, contact_id, thread_id AS thread_id_from_contact FROM contacts1) \t\t\t\tON thread_id_from_contact = sms.thread_id \tWHERE sms.type = 1 UNION \tSELECT DISTINCT \'mms\' AS transport_type, pdu._id AS _id, \t\tpdu.thread_id AS thread_id, (SELECT address from addr WHERE addr.msg_id = pdu._id) as address, NULL AS body, \t\tdate * 1000 AS normalized_date, sub, sub_cs, read, \t\tm_type,pri AS priority, locked , _id, NULL AS vvm_id, NULL AS ptime, \t\tNULL AS is_private, NULL AS is_urgent, NULL AS vvm_type, 0 AS is_evdo, contact_id, ct_t as content_type \t\t\tFROM pdu LEFT JOIN (SELECT htcthread_id, contact_id, thread_id AS thread_id_from_contact FROM contacts1) \t\t\t\tON thread_id_from_contact = pdu.thread_id \tWHERE m_type = 130 OR m_type = 132 UNION \tSELECT DISTINCT htcmsgs.msg_type AS transport_type, htcmsgs._id AS _id, \t\thtcmsgs._id, address, NULL AS body, \t\tdate AS normalized_date, NULL AS sub, NULL AS sub_cs, read, \t\tNULL AS m_type, NULL AS priority, NULL AS locked , htcthread_id, vvm_id, ptime, \t\thtcmsgs.is_private AS is_private, htcmsgs.is_urgent AS is_urgent, type AS vvm_type, 0 AS is_evdo, contact_id, NULL as content_type \t\t\tFROM htcmsgs LEFT JOIN (SELECT htcthread_id AS htcthread_id_from_contact, contact_id FROM contacts1) \t\t\t\tON htcthread_id_from_contact = htcmsgs.htcthread_id ) ORDER BY normalized_date ASC "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6685
    return-void
.end method

.method private upgradeDatabaseToVersion68(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 6689
    const-string v0, "MmsSmsDatabaseHelper"

    const-string v1, "update to version 68>"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6690
    const-string v0, "CREATE TRIGGER IF NOT EXISTS mark_sms_as_deleted   AFTER UPDATE OF type ON sms   WHEN (new.type = 10 ) BEGIN   UPDATE sms SET type = -old.type   WHERE _id = old._id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6697
    const-string v0, "CREATE TRIGGER IF NOT EXISTS mark_mms_as_deleted   AFTER UPDATE OF msg_box ON pdu   WHEN (new.msg_box = 10 ) BEGIN   UPDATE pdu SET msg_box = -old.msg_box   WHERE _id = old._id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6704
    return-void
.end method

.method private upgradeDatabaseToVersion69(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 6709
    const-string v1, "MmsSmsDatabaseHelper"

    const-string v2, "update to version 69 and add (c_type,exp) in threads_list>"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6712
    :try_start_0
    const-string v1, "ALTER TABLE sms ADD COLUMN c_type INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6714
    const-string v1, "ALTER TABLE sms ADD COLUMN exp INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6722
    const-string v1, "DROP VIEW IF EXISTS threads_list"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6723
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createThreadsListView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 6726
    :goto_0
    return-void

    .line 6716
    :catch_0
    move-exception v0

    .line 6717
    .local v0, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got exception altering table sms add column c_type, exp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6722
    const-string v1, "DROP VIEW IF EXISTS threads_list"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6723
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createThreadsListView(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 6722
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    const-string v2, "DROP VIEW IF EXISTS threads_list"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6723
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createThreadsListView(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1
.end method

.method private upgradeDatabaseToVersion70(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 6732
    const-string v1, "MmsSmsDatabaseHelper"

    const-string v2, "update to version 70>"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6735
    :try_start_0
    const-string v1, "DROP TRIGGER IF EXISTS sms_update_thread_on_delete"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6736
    const-string v1, "DROP TRIGGER IF EXISTS delete_obsolete_threads_sms"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6737
    const-string v1, "DROP TRIGGER IF EXISTS update_threads_error_on_delete_sms"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6738
    const-string v1, "DROP TRIGGER IF EXISTS sms_update_thread_on_insert"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6742
    :goto_0
    return-void

    .line 6739
    :catch_0
    move-exception v0

    .line 6740
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private upgradeDatabaseToVersion71(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 6747
    const-string v0, "MmsSmsDatabaseHelper"

    const-string v1, "update to version 71> create cmas table"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6749
    const-string v0, "CREATE TABLE IF NOT EXISTS cmas (_id INTEGER PRIMARY KEY, toa INTEGER DEFAULT 0, address TEXT, date INTEGER, protocol INTEGER DEFAULT 0, read INTEGER DEFAULT 0, subject TEXT, body TEXT, sc_toa INTEGER DEFAULT 0, service_center TEXT, locked INTEGER DEFAULT 0, callback_number TEXT, priority INTEGER DEFAULT 0, is_cdma_format INTEGER DEFAULT 0, c_type INTEGER DEFAULT 0, exp INTEGER DEFAULT 0, received_time INTEGER DEFAULT 0, pdu TEXT  );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6770
    const-string v0, "CREATE VIEW IF NOT EXISTS cmas_view AS  SELECT _id, toa, address, date, protocol, read, subject, body, sc_toa,  service_center, locked, callback_number, priority, is_cdma_format, c_type,  exp, received_time, pdu,  (CASE WHEN exp > strftime(\'%s\',\'now\') * 1000 THEN 1 ELSE 0 END) AS presidential  FROM cmas "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6776
    return-void
.end method

.method private upgradeDatabaseToVersion72(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 6782
    const-string v1, "MmsSmsDatabaseHelper"

    const-string v2, "update to version 72>"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6785
    :try_start_0
    const-string v1, "DROP TRIGGER IF EXISTS sms_update_thread_date_subject_on_update"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6786
    const-string v1, "DROP TRIGGER IF EXISTS sms_update_thread_read_on_update"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6790
    :goto_0
    return-void

    .line 6787
    :catch_0
    move-exception v0

    .line 6788
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private upgradeDatabaseToVersion73(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 6796
    const-string v1, "MmsSmsDatabaseHelper"

    const-string v2, "update to version 73>"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6799
    :try_start_0
    const-string v1, "DROP TABLE IF EXISTS blocklist"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6800
    const-string v1, "CREATE TABLE blocklist (_id INTEGER PRIMARY KEY, number TEXT)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6804
    :goto_0
    return-void

    .line 6801
    :catch_0
    move-exception v0

    .line 6802
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private upgradeDatabaseToVersion74(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 6809
    const-string v0, "MmsSmsDatabaseHelper"

    const-string v1, "update to version 74>"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6811
    const-string v0, "DROP VIEW IF EXISTS incoming_msg_contactbase_non_vvm"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6815
    const-string v0, "CREATE VIEW incoming_msg_contactbase_non_vvm AS SELECT transport_type, _id, thread_id, address, body, normalized_date, sub, sub_cs, read, m_type, priority, locked, is_evdo, contact_id, content_type FROM ( \tSELECT DISTINCT \'sms\' AS transport_type, sms._id AS _id, \t\tsms.thread_id AS thread_id, address, body, \t\tdate AS normalized_date, NULL AS sub, NULL as sub_cs, read, \t\tNULL AS m_type, priority, locked, is_evdo, contact_id, NULL as content_type \t\t\tFROM sms LEFT JOIN (SELECT thread_id AS thread_id_from_contact, contact_id FROM contacts1) \t\t\t\tON thread_id_from_contact = sms.thread_id \tWHERE (sms.type = 1 AND htc_category = 0) UNION \tSELECT DISTINCT \'mms\' AS transport_type, pdu._id AS _id, \t\tpdu.thread_id AS thread_id, (SELECT address from addr WHERE (addr.msg_id = pdu._id AND addr.type = 137)) as address, NULL AS body, \t\tdate * 1000 AS normalized_date, sub, sub_cs, read, \t\tm_type,pri AS priority, locked , 0 AS is_evdo, contact_id, ct_t AS content_type \t\t\tFROM pdu LEFT JOIN (SELECT thread_id AS thread_id_from_contact, contact_id FROM contacts1) \t\t\t\tON thread_id_from_contact = pdu.thread_id \tWHERE ((m_type = 130 OR m_type = 132) AND htc_category = 0 AND msg_box > 0) ) ORDER BY normalized_date ASC "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6838
    const-string v0, "DROP VIEW IF EXISTS incoming_msg_contactbase_vvm"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6842
    const-string v0, "CREATE VIEW incoming_msg_contactbase_vvm AS SELECT transport_type, _id, thread_id, address, body, normalized_date, sub, sub_cs, read, m_type, priority, locked, htcthread_id, vvm_id, ptime, is_private, is_urgent, vvm_type, is_evdo, contact_id, content_type  FROM ( \tSELECT DISTINCT \'sms\' AS transport_type, sms._id AS _id, \t\tsms.thread_id AS thread_id, address, body, \t\tdate AS normalized_date, NULL AS sub, NULL as sub_cs, read, \t\tNULL AS m_type, priority, locked, htcthread_id, NULL AS vvm_id, NULL AS ptime, \t\tNULL AS is_private, NULL AS is_urgent, NULL AS vvm_type, is_evdo, contact_id, NULL as content_type \t\t\tFROM sms LEFT JOIN (SELECT htcthread_id, contact_id, thread_id AS thread_id_from_contact FROM contacts1) \t\t\t\tON thread_id_from_contact = sms.thread_id \tWHERE sms.type = 1 UNION \tSELECT DISTINCT \'mms\' AS transport_type, pdu._id AS _id, \t\tpdu.thread_id AS thread_id, (SELECT address from addr WHERE (addr.msg_id = pdu._id AND addr.type = 137)) as address, NULL AS body, \t\tdate * 1000 AS normalized_date, sub, sub_cs, read, \t\tm_type,pri AS priority, locked , _id, NULL AS vvm_id, NULL AS ptime, \t\tNULL AS is_private, NULL AS is_urgent, NULL AS vvm_type, 0 AS is_evdo, contact_id, ct_t as content_type \t\t\tFROM pdu LEFT JOIN (SELECT htcthread_id, contact_id, thread_id AS thread_id_from_contact FROM contacts1) \t\t\t\tON thread_id_from_contact = pdu.thread_id \tWHERE m_type = 130 OR m_type = 132 UNION \tSELECT DISTINCT htcmsgs.msg_type AS transport_type, htcmsgs._id AS _id, \t\thtcmsgs._id, address, NULL AS body, \t\tdate AS normalized_date, NULL AS sub, NULL AS sub_cs, read, \t\tNULL AS m_type, NULL AS priority, NULL AS locked , htcthread_id, vvm_id, ptime, \t\thtcmsgs.is_private AS is_private, htcmsgs.is_urgent AS is_urgent, type AS vvm_type, 0 AS is_evdo, contact_id, NULL as content_type \t\t\tFROM htcmsgs LEFT JOIN (SELECT htcthread_id AS htcthread_id_from_contact, contact_id FROM contacts1) \t\t\t\tON htcthread_id_from_contact = htcmsgs.htcthread_id ) ORDER BY normalized_date ASC "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6876
    return-void
.end method

.method private upgradeDatabaseToVersion75(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 6880
    const-string v0, "MmsSmsDatabaseHelper"

    const-string v1, "update to version 75>"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6881
    const-string v0, " ALTER TABLE cmas  ADD COLUMN cmae_id INTEGER DEFAULT -1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6883
    const-string v0, " ALTER TABLE cmas  ADD COLUMN category INTEGER DEFAULT -1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6885
    const-string v0, " ALTER TABLE cmas  ADD COLUMN response INTEGER DEFAULT -1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6887
    const-string v0, " ALTER TABLE cmas  ADD COLUMN severity INTEGER DEFAULT -1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6889
    const-string v0, " ALTER TABLE cmas  ADD COLUMN urgency INTEGER DEFAULT -1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6891
    const-string v0, " ALTER TABLE cmas  ADD COLUMN certainty INTEGER DEFAULT -1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6894
    const-string v0, "DROP VIEW IF EXISTS cmas_view"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6895
    const-string v0, "CREATE VIEW IF NOT EXISTS cmas_view AS  SELECT _id, toa, address, date, protocol, read, subject, body, sc_toa,  service_center, locked, callback_number, priority, is_cdma_format, c_type,  exp, received_time, pdu, cmae_id, category, response, severity, urgency, certainty,  (CASE WHEN (exp > (strftime(\'%s\',\'now\') * 1000)) AND c_type = 1 THEN 1 ELSE 0 END)  AS presidential  FROM cmas "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6902
    return-void
.end method

.method private upgradeDatabaseToVersion76(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 6908
    const-string v1, "MmsSmsDatabaseHelper"

    const-string v2, "update to version 76>"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6911
    :try_start_0
    const-string v1, "ALTER TABLE sms ADD COLUMN gid INTEGER DEFAULT 0;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6912
    const-string v1, "ALTER TABLE sms ADD COLUMN extra INTEGER DEFAULT 0;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6913
    const-string v1, "ALTER TABLE pdu ADD COLUMN extra INTEGER DEFAULT 0;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6917
    :goto_0
    return-void

    .line 6914
    :catch_0
    move-exception v0

    .line 6915
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private upgradeDatabaseToVersion77(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 6923
    const-string v1, "MmsSmsDatabaseHelper"

    const-string v2, "update to version 77>"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6926
    :try_start_0
    const-string v1, "ALTER TABLE pdu ADD COLUMN phone_type INTEGER DEFAULT 0;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6927
    const-string v1, "ALTER TABLE raw ADD COLUMN phone_type INTEGER DEFAULT 0;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6931
    :goto_0
    return-void

    .line 6928
    :catch_0
    move-exception v0

    .line 6929
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private upgradeDatabaseToVersion78(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 6937
    const-string v1, "MmsSmsDatabaseHelper"

    const-string v2, "update to version 78>"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6940
    :try_start_0
    const-string v1, "ALTER TABLE sms ADD COLUMN date2 INTEGER DEFAULT 0;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6944
    :goto_0
    return-void

    .line 6941
    :catch_0
    move-exception v0

    .line 6942
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private upgradeDatabaseToVersion79(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 6965
    const-string v1, "MmsSmsDatabaseHelper"

    const-string v2, "update to version 79>"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6968
    :try_start_0
    const-string v1, "ALTER TABLE pdu ADD COLUMN date2 INTEGER DEFAULT 0;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6972
    :goto_0
    return-void

    .line 6969
    :catch_0
    move-exception v0

    .line 6970
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private upgradeDatabaseToVersion80(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 6993
    const-string v0, "MmsSmsDatabaseHelper"

    const-string v1, "update to version 80>"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6995
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createLookupTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 6996
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createLookupTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 6997
    return-void
.end method

.method private upgradeDatabaseToVersion81(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 7002
    const-string v1, "MmsSmsDatabaseHelper"

    const-string v2, "update to version 81>"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7005
    :try_start_0
    const-string v1, "DROP TRIGGER IF EXISTS pdu_update_thread_read_on_update"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7009
    :goto_0
    return-void

    .line 7006
    :catch_0
    move-exception v0

    .line 7007
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private upgradeDatabaseToVersion82(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 7014
    const-string v0, "MmsSmsDatabaseHelper"

    const-string v1, "update to version 82"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7017
    const-string v0, "ALTER TABLE sms ADD COLUMN date_sent INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 7019
    const-string v0, "ALTER TABLE pdu ADD COLUMN date_sent INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 7022
    const-string v0, "DROP TRIGGER IF EXISTS delete_obsolete_threads_pdu"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 7023
    const-string v0, "DROP TRIGGER IF EXISTS delete_obsolete_threads_when_update_pdu"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 7024
    return-void
.end method

.method private upgradeTextFile2TextColumn(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 18
    .parameter "db"

    .prologue
    .line 4865
    const-string v2, "Jerry"

    const-string v3, "upgradeTextFile2TextColumn >>>"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4866
    const-string v3, "part"

    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "ct"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string v5, "_data"

    aput-object v5, v4, v2

    const-string v5, " (ct = ? OR ct = ?)"

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "text/plain"

    aput-object v7, v6, v2

    const/4 v2, 0x1

    const-string v7, "application/smil"

    aput-object v7, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "_id"

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 4869
    .local v11, cursor:Landroid/database/Cursor;
    if-nez v11, :cond_0

    .line 4870
    const-string v2, "Jerry"

    const-string v3, "upgradeTextFile2TextColumn  cursor is null <<<"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4933
    :goto_0
    return-void

    .line 4874
    :cond_0
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4875
    const/4 v2, 0x2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 4876
    .local v15, path:Ljava/lang/String;
    const-string v2, "Jerry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "path >"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4877
    if-eqz v15, :cond_0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 4878
    const/4 v13, 0x0

    .line 4880
    .local v13, fIn:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v15}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 4881
    .end local v13           #fIn:Ljava/io/FileInputStream;
    .local v14, fIn:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v14}, Ljava/io/FileInputStream;->available()I

    move-result v16

    .line 4882
    .local v16, size:I
    const-string v2, "Jerry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "size >"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4883
    if-gtz v16, :cond_2

    .line 4884
    const-string v2, "Jerry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "file size is zero"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4886
    if-nez v16, :cond_1

    .line 4887
    new-instance v17, Landroid/content/ContentValues;

    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 4888
    .local v17, values:Landroid/content/ContentValues;
    const-string v2, "text"

    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    const-string v4, ""

    invoke-direct {v3, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4889
    const-string v2, "part"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    .line 4913
    .end local v17           #values:Landroid/content/ContentValues;
    :cond_1
    if-eqz v14, :cond_0

    .line 4914
    :try_start_2
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 4915
    :catch_0
    move-exception v12

    .line 4916
    .local v12, e:Ljava/io/IOException;
    const-string v2, "Jerry"

    const-string v3, "close fin file fail"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4894
    .end local v12           #e:Ljava/io/IOException;
    :cond_2
    :try_start_3
    move/from16 v0, v16

    new-array v10, v0, [B

    .line 4895
    .local v10, content:[B
    invoke-virtual {v14, v10}, Ljava/io/FileInputStream;->read([B)I

    .line 4896
    const-string v2, "Jerry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content >"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    const-string v5, "utf-8"

    invoke-direct {v4, v10, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4899
    new-instance v17, Landroid/content/ContentValues;

    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 4901
    .restart local v17       #values:Landroid/content/ContentValues;
    const-string v2, "text"

    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v3, v10}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4902
    const-string v2, "part"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9

    .line 4913
    if-eqz v14, :cond_0

    .line 4914
    :try_start_4
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 4915
    :catch_1
    move-exception v12

    .line 4916
    .restart local v12       #e:Ljava/io/IOException;
    const-string v2, "Jerry"

    const-string v3, "close fin file fail"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4905
    .end local v10           #content:[B
    .end local v12           #e:Ljava/io/IOException;
    .end local v14           #fIn:Ljava/io/FileInputStream;
    .end local v16           #size:I
    .end local v17           #values:Landroid/content/ContentValues;
    .restart local v13       #fIn:Ljava/io/FileInputStream;
    :catch_2
    move-exception v12

    .line 4906
    .local v12, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_5
    const-string v2, "MmsSmsDatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " openFileInput FileNotFoundException e >"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4913
    if-eqz v13, :cond_0

    .line 4914
    :try_start_6
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_1

    .line 4915
    :catch_3
    move-exception v12

    .line 4916
    .local v12, e:Ljava/io/IOException;
    const-string v2, "Jerry"

    const-string v3, "close fin file fail"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4907
    .end local v12           #e:Ljava/io/IOException;
    :catch_4
    move-exception v12

    .line 4908
    .restart local v12       #e:Ljava/io/IOException;
    :goto_3
    :try_start_7
    const-string v2, "MmsSmsDatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " openFileInput IOException e >"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 4913
    if-eqz v13, :cond_0

    .line 4914
    :try_start_8
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_1

    .line 4915
    :catch_5
    move-exception v12

    .line 4916
    const-string v2, "Jerry"

    const-string v3, "close fin file fail"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4909
    .end local v12           #e:Ljava/io/IOException;
    :catch_6
    move-exception v12

    .line 4910
    .local v12, e:Ljava/lang/Exception;
    :goto_4
    :try_start_9
    const-string v2, "MmsSmsDatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " openFileInput other Exception e >"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 4913
    if-eqz v13, :cond_0

    .line 4914
    :try_start_a
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto/16 :goto_1

    .line 4915
    :catch_7
    move-exception v12

    .line 4916
    .local v12, e:Ljava/io/IOException;
    const-string v2, "Jerry"

    const-string v3, "close fin file fail"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4912
    .end local v12           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 4913
    :goto_5
    if-eqz v13, :cond_3

    .line 4914
    :try_start_b
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 4917
    :cond_3
    :goto_6
    throw v2

    .line 4915
    :catch_8
    move-exception v12

    .line 4916
    .restart local v12       #e:Ljava/io/IOException;
    const-string v3, "Jerry"

    const-string v4, "close fin file fail"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 4930
    .end local v12           #e:Ljava/io/IOException;
    .end local v13           #fIn:Ljava/io/FileInputStream;
    .end local v15           #path:Ljava/lang/String;
    :cond_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 4932
    const-string v2, "Jerry"

    const-string v3, "upgradeTextFile2TextColumn <<<"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4912
    .restart local v14       #fIn:Ljava/io/FileInputStream;
    .restart local v15       #path:Ljava/lang/String;
    :catchall_1
    move-exception v2

    move-object v13, v14

    .end local v14           #fIn:Ljava/io/FileInputStream;
    .restart local v13       #fIn:Ljava/io/FileInputStream;
    goto :goto_5

    .line 4909
    .end local v13           #fIn:Ljava/io/FileInputStream;
    .restart local v14       #fIn:Ljava/io/FileInputStream;
    :catch_9
    move-exception v12

    move-object v13, v14

    .end local v14           #fIn:Ljava/io/FileInputStream;
    .restart local v13       #fIn:Ljava/io/FileInputStream;
    goto :goto_4

    .line 4907
    .end local v13           #fIn:Ljava/io/FileInputStream;
    .restart local v14       #fIn:Ljava/io/FileInputStream;
    :catch_a
    move-exception v12

    move-object v13, v14

    .end local v14           #fIn:Ljava/io/FileInputStream;
    .restart local v13       #fIn:Ljava/io/FileInputStream;
    goto :goto_3

    .line 4905
    .end local v13           #fIn:Ljava/io/FileInputStream;
    .restart local v14       #fIn:Ljava/io/FileInputStream;
    :catch_b
    move-exception v12

    move-object v13, v14

    .end local v14           #fIn:Ljava/io/FileInputStream;
    .restart local v13       #fIn:Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method

.method private upgradeThreadsTableToAutoIncrement(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 7118
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->hasAutoIncrement(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7119
    const-string v0, "MmsSmsDatabaseHelper"

    const-string v1, "[MmsSmsDb] upgradeThreadsTableToAutoIncrement: already upgraded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7149
    :goto_0
    return-void

    .line 7122
    :cond_0
    const-string v0, "MmsSmsDatabaseHelper"

    const-string v1, "[MmsSmsDb] upgradeThreadsTableToAutoIncrement: upgrading"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7127
    const-string v0, "CREATE TABLE threads_temp (_id INTEGER PRIMARY KEY AUTOINCREMENT,date INTEGER DEFAULT 0,message_count INTEGER DEFAULT 0,recipient_ids TEXT,recipient_address TEXT,snippet TEXT,snippet_cs INTEGER DEFAULT 0,read INTEGER DEFAULT 1,unread_count INTEGER DEFAULT 0,body TEXT,name TEXT,priority INTEGER DEFAULT 0,type INTEGER DEFAULT 0,error INTEGER DEFAULT 0,has_attachment INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 7144
    const-string v0, "INSERT INTO threads_temp SELECT * from threads;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 7145
    const-string v0, "DROP TABLE threads;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 7146
    const-string v0, "ALTER TABLE threads_temp RENAME TO threads;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 7148
    const-string v0, "MmsSmsDatabaseHelper"

    const-string v1, "[MmsSmsDb] upgradeThreadsTableToAutoIncrement: end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 7

    .prologue
    .line 7030
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 7032
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-boolean v4, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->sTriedAutoIncrement:Z

    if-nez v4, :cond_1

    .line 7033
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->sTriedAutoIncrement:Z

    .line 7034
    invoke-direct {p0, v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->hasAutoIncrement(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v2

    .line 7035
    .local v2, hasAutoIncrement:Z
    const-string v4, "MmsSmsDatabaseHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getWritableDatabase] hasAutoIncrement: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7036
    if-nez v2, :cond_1

    .line 7037
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7044
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeThreadsTableToAutoIncrement(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 7045
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 7047
    iget-object v4, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mLowStorageMonitor:Lcom/android/providers/telephony/MmsSmsDatabaseHelper$LowStorageMonitor;

    if-eqz v4, :cond_0

    .line 7049
    const-string v4, "MmsSmsDatabaseHelper"

    const-string v5, "Unregistering mLowStorageMonitor - we\'ve upgraded"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7050
    iget-object v4, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mLowStorageMonitor:Lcom/android/providers/telephony/MmsSmsDatabaseHelper$LowStorageMonitor;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 7051
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mLowStorageMonitor:Lcom/android/providers/telephony/MmsSmsDatabaseHelper$LowStorageMonitor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 7071
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 7078
    .end local v2           #hasAutoIncrement:Z
    :cond_1
    :goto_0
    sget-object v4, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mmsFileObsv:Lcom/android/providers/telephony/MmsSmsDatabaseHelper$MmsFileObserver;

    if-nez v4, :cond_2

    .line 7079
    new-instance v4, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$MmsFileObserver;

    invoke-direct {v4, p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$MmsFileObserver;-><init>(Lcom/android/providers/telephony/MmsSmsDatabaseHelper;)V

    sput-object v4, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mmsFileObsv:Lcom/android/providers/telephony/MmsSmsDatabaseHelper$MmsFileObserver;

    .line 7080
    sget-object v4, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mmsFileObsv:Lcom/android/providers/telephony/MmsSmsDatabaseHelper$MmsFileObserver;

    invoke-virtual {v4}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$MmsFileObserver;->startWatching()V

    .line 7082
    :cond_2
    sget-object v4, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mmsDirObsv:Lcom/android/providers/telephony/MmsSmsDatabaseHelper$MmsDirObserver;

    if-nez v4, :cond_3

    .line 7083
    new-instance v4, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$MmsDirObserver;

    invoke-direct {v4, p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$MmsDirObserver;-><init>(Lcom/android/providers/telephony/MmsSmsDatabaseHelper;)V

    sput-object v4, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mmsDirObsv:Lcom/android/providers/telephony/MmsSmsDatabaseHelper$MmsDirObserver;

    .line 7084
    sget-object v4, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mmsDirObsv:Lcom/android/providers/telephony/MmsSmsDatabaseHelper$MmsDirObserver;

    invoke-virtual {v4}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$MmsDirObserver;->startWatching()V

    .line 7086
    :cond_3
    sget-object v4, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mmsDirObsv2:Lcom/android/providers/telephony/MmsSmsDatabaseHelper$MmsDirObserver2;

    if-nez v4, :cond_4

    .line 7087
    new-instance v4, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$MmsDirObserver2;

    invoke-direct {v4, p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$MmsDirObserver2;-><init>(Lcom/android/providers/telephony/MmsSmsDatabaseHelper;)V

    sput-object v4, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mmsDirObsv2:Lcom/android/providers/telephony/MmsSmsDatabaseHelper$MmsDirObserver2;

    .line 7088
    sget-object v4, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mmsDirObsv2:Lcom/android/providers/telephony/MmsSmsDatabaseHelper$MmsDirObserver2;

    invoke-virtual {v4}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$MmsDirObserver2;->startWatching()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7092
    :cond_4
    monitor-exit p0

    return-object v0

    .line 7053
    .restart local v2       #hasAutoIncrement:Z
    :catch_0
    move-exception v1

    .line 7054
    .local v1, ex:Ljava/lang/Throwable;
    :try_start_3
    const-string v4, "MmsSmsDatabaseHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to add autoIncrement: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7056
    sget-boolean v4, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->sFakeLowStorageTest:Z

    if-eqz v4, :cond_5

    .line 7057
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->sFakeLowStorageTest:Z

    .line 7062
    :cond_5
    iget-object v4, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mLowStorageMonitor:Lcom/android/providers/telephony/MmsSmsDatabaseHelper$LowStorageMonitor;

    if-nez v4, :cond_6

    .line 7063
    const-string v4, "MmsSmsDatabaseHelper"

    const-string v5, "[getWritableDatabase] turning on storage monitor"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7064
    new-instance v4, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$LowStorageMonitor;

    invoke-direct {v4, p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$LowStorageMonitor;-><init>(Lcom/android/providers/telephony/MmsSmsDatabaseHelper;)V

    iput-object v4, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mLowStorageMonitor:Lcom/android/providers/telephony/MmsSmsDatabaseHelper$LowStorageMonitor;

    .line 7065
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 7066
    .local v3, intentFilter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7067
    const-string v4, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7068
    iget-object v4, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mLowStorageMonitor:Lcom/android/providers/telephony/MmsSmsDatabaseHelper$LowStorageMonitor;

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 7071
    .end local v3           #intentFilter:Landroid/content/IntentFilter;
    :cond_6
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 7030
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v1           #ex:Ljava/lang/Throwable;
    .end local v2           #hasAutoIncrement:Z
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 7071
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2       #hasAutoIncrement:Z
    :catchall_1
    move-exception v4

    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 1463
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createMmsTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1464
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createSmsTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1465
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createCommonTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1466
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createCommonTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1467
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createMmsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1468
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createSmsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1469
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createLookupTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1470
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createLookupTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1473
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createQTextTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1478
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createCBTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1481
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createWordsTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1482
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createIndices(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1483
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 6
    .parameter "db"
    .parameter "oldVersion"
    .parameter "currentVersion"

    .prologue
    .line 2636
    const-string v3, "MmsSmsDatabaseHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Upgrading database from version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2639
    packed-switch p2, :pswitch_data_0

    .line 3505
    :goto_0
    :pswitch_0
    const-string v3, "MmsSmsDatabaseHelper"

    const-string v4, "Destroying all old data."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3506
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->dropQTextTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3507
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->dropCommonTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3508
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->dropMmsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3509
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->dropCommonTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3510
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->dropMmsTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3511
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->dropSmsTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3512
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->dropCBTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3516
    invoke-virtual {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3517
    :cond_0
    :goto_1
    return-void

    .line 2641
    :pswitch_1
    const/16 v3, 0x18

    if-le p3, v3, :cond_0

    .line 2645
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2647
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion25(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2648
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2653
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2657
    :pswitch_2
    const/16 v3, 0x19

    if-le p3, v3, :cond_0

    .line 2661
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2663
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion26(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2664
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 2669
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2673
    :pswitch_3
    const/16 v3, 0x1a

    if-le p3, v3, :cond_0

    .line 2677
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2679
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion27(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2680
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 2685
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2689
    :pswitch_4
    const/16 v3, 0x1b

    if-le p3, v3, :cond_0

    .line 2693
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2695
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion28(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2696
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 2701
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2705
    :pswitch_5
    const/16 v3, 0x1c

    if-le p3, v3, :cond_0

    .line 2710
    const-string v3, "SELECT * FROM threads"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2711
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 2713
    :try_start_4
    const-string v3, "snippet_cs"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    .line 2730
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2734
    :cond_1
    :goto_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2736
    :try_start_5
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion29(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2737
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6

    .line 2742
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2746
    .end local v0           #c:Landroid/database/Cursor;
    :pswitch_6
    const/16 v3, 0x1d

    if-le p3, v3, :cond_0

    .line 2750
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2752
    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion30(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2753
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_7

    .line 2758
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2762
    :pswitch_7
    const/16 v3, 0x1e

    if-le p3, v3, :cond_0

    .line 2766
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2768
    :try_start_7
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion31(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2769
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_8

    .line 2774
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2778
    :pswitch_8
    const/16 v3, 0x1f

    if-le p3, v3, :cond_0

    .line 2782
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2784
    :try_start_8
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion32(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2785
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_9
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_9

    .line 2790
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2794
    :pswitch_9
    const/16 v3, 0x20

    if-le p3, v3, :cond_0

    .line 2798
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2800
    :try_start_9
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion33(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2801
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_a
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_a

    .line 2806
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2810
    :pswitch_a
    const/16 v3, 0x21

    if-le p3, v3, :cond_0

    .line 2814
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2816
    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion34(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2817
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_b
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_b

    .line 2822
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2826
    :pswitch_b
    const/16 v3, 0x22

    if-le p3, v3, :cond_0

    .line 2830
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2832
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion35(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2833
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_c
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_c

    .line 2838
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2842
    :pswitch_c
    const/16 v3, 0x23

    if-le p3, v3, :cond_0

    .line 2846
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2848
    :try_start_c
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion36(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2849
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_d
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_d

    .line 2854
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2858
    :pswitch_d
    const/16 v3, 0x24

    if-le p3, v3, :cond_0

    .line 2862
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2864
    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion37(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2865
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_e
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_e

    .line 2870
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2874
    :pswitch_e
    const/16 v3, 0x25

    if-le p3, v3, :cond_0

    .line 2878
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2880
    :try_start_e
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion38(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2881
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_f
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_f

    .line 2886
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2890
    :pswitch_f
    const/16 v3, 0x26

    if-le p3, v3, :cond_0

    .line 2894
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2896
    :try_start_f
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion39(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2897
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_10
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_10

    .line 2902
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2906
    :pswitch_10
    const/16 v3, 0x27

    if-le p3, v3, :cond_0

    .line 2910
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2912
    :try_start_10
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion40(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2913
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_11
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_11

    .line 2918
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2922
    :pswitch_11
    const/16 v3, 0x28

    if-le p3, v3, :cond_0

    .line 2926
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2928
    :try_start_11
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion41(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2929
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_12
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_12

    .line 2934
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2938
    :pswitch_12
    const/16 v3, 0x29

    if-le p3, v3, :cond_0

    .line 2941
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2943
    :try_start_12
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion42(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2944
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_13
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_13

    .line 2949
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2953
    :pswitch_13
    const/16 v3, 0x2a

    if-lt p3, v3, :cond_0

    .line 2957
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2959
    :try_start_13
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion43(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2960
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_14
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_14

    .line 2965
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2969
    :pswitch_14
    const/16 v3, 0x2b

    if-le p3, v3, :cond_0

    .line 2972
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2974
    :try_start_14
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion44(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2975
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_15
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_15

    .line 2980
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 2649
    :catch_0
    move-exception v2

    .line 2650
    .local v2, ex:Ljava/lang/Throwable;
    :try_start_15
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 2653
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 2665
    :catch_1
    move-exception v2

    .line 2666
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_16
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 2669
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_1
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 2681
    :catch_2
    move-exception v2

    .line 2682
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_17
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 2685
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_2
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 2697
    :catch_3
    move-exception v2

    .line 2698
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_18
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    .line 2701
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_3
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 2714
    .restart local v0       #c:Landroid/database/Cursor;
    :catch_4
    move-exception v1

    .line 2718
    .local v1, e:Ljava/lang/IllegalArgumentException;
    :try_start_19
    const-string v3, "MmsSmsDatabaseHelper"

    const-string v4, "Upgrade database file from TC2!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2719
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    .line 2721
    :try_start_1a
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion28(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2722
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_5

    .line 2727
    :try_start_1b
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    .line 2730
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 2723
    :catch_5
    move-exception v2

    .line 2724
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_1c
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    .line 2727
    :try_start_1d
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    .line 2730
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2727
    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_4
    move-exception v3

    :try_start_1e
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_5

    .line 2730
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catchall_5
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3

    .line 2738
    :catch_6
    move-exception v2

    .line 2739
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_1f
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    .line 2742
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_6
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 2754
    .end local v0           #c:Landroid/database/Cursor;
    :catch_7
    move-exception v2

    .line 2755
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_20
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_7

    .line 2758
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_7
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 2770
    :catch_8
    move-exception v2

    .line 2771
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_21
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_8

    .line 2774
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_8
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 2786
    :catch_9
    move-exception v2

    .line 2787
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_22
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_9

    .line 2790
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_9
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 2802
    :catch_a
    move-exception v2

    .line 2803
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_23
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_a

    .line 2806
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_a
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 2818
    :catch_b
    move-exception v2

    .line 2819
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_24
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_b

    .line 2822
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_b
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 2834
    :catch_c
    move-exception v2

    .line 2835
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_25
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_c

    .line 2838
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_c
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 2850
    :catch_d
    move-exception v2

    .line 2851
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_26
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_d

    .line 2854
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_d
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 2866
    :catch_e
    move-exception v2

    .line 2867
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_27
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_e

    .line 2870
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_e
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 2882
    :catch_f
    move-exception v2

    .line 2883
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_28
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_f

    .line 2886
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_f
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 2898
    :catch_10
    move-exception v2

    .line 2899
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_29
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_10

    .line 2902
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_10
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 2914
    :catch_11
    move-exception v2

    .line 2915
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_2a
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_11

    .line 2918
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_11
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 2930
    :catch_12
    move-exception v2

    .line 2931
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_2b
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_12

    .line 2934
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_12
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 2945
    :catch_13
    move-exception v2

    .line 2946
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_2c
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_13

    .line 2949
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_13
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 2961
    :catch_14
    move-exception v2

    .line 2962
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_2d
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_14

    .line 2965
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_14
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 2976
    :catch_15
    move-exception v2

    .line 2977
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_2e
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_15

    .line 2980
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_15
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 2987
    :pswitch_15
    const/16 v3, 0x2d

    if-le p3, v3, :cond_0

    .line 2990
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2992
    :try_start_2f
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion46(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2993
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_16
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_16

    .line 2998
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3003
    :pswitch_16
    const/16 v3, 0x2e

    if-le p3, v3, :cond_0

    .line 3006
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3008
    :try_start_30
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion47(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3009
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_17
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_17

    .line 3014
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3018
    :pswitch_17
    const/16 v3, 0x2f

    if-le p3, v3, :cond_0

    .line 3021
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3023
    :try_start_31
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion48(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3024
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_18
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_18

    .line 3029
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3033
    :pswitch_18
    const/16 v3, 0x30

    if-le p3, v3, :cond_0

    .line 3036
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3038
    :try_start_32
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion49(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3039
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_19
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_19

    .line 3044
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3048
    :pswitch_19
    const/16 v3, 0x31

    if-le p3, v3, :cond_0

    .line 3051
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3053
    :try_start_33
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion50(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3054
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_1a
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_1a

    .line 3059
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3063
    :pswitch_1a
    const/16 v3, 0x32

    if-le p3, v3, :cond_0

    .line 3066
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3068
    :try_start_34
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion51(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3069
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_1b
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_1b

    .line 3074
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3078
    :pswitch_1b
    const/16 v3, 0x33

    if-le p3, v3, :cond_0

    .line 3081
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3083
    :try_start_35
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion52(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3084
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_1c
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_1c

    .line 3089
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3093
    :pswitch_1c
    const/16 v3, 0x34

    if-le p3, v3, :cond_0

    .line 3096
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3098
    :try_start_36
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion53(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3099
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_1d
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_1d

    .line 3104
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3108
    :pswitch_1d
    const/16 v3, 0x35

    if-le p3, v3, :cond_0

    .line 3111
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3113
    :try_start_37
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion54(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3114
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_1e
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_1e

    .line 3119
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3123
    :pswitch_1e
    const/16 v3, 0x36

    if-gt p3, v3, :cond_2

    .line 3127
    :cond_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3129
    :try_start_38
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion55(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3130
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_1f
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_1f

    .line 3135
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3139
    :pswitch_1f
    const/16 v3, 0x37

    if-gt p3, v3, :cond_3

    .line 3143
    :cond_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3145
    :try_start_39
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion56(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3146
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_20
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_20

    .line 3151
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3159
    :pswitch_20
    const/16 v3, 0x3b

    if-le p3, v3, :cond_0

    .line 3162
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3164
    :try_start_3a
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion60(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3165
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_21
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_21

    .line 3170
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3174
    :pswitch_21
    const/16 v3, 0x3c

    if-le p3, v3, :cond_0

    .line 3177
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3179
    :try_start_3b
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion61(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3180
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_22
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_22

    .line 3185
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3188
    :pswitch_22
    const/16 v3, 0x3d

    if-le p3, v3, :cond_0

    .line 3191
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3193
    :try_start_3c
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion62(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3194
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_23
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_23

    .line 3199
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3202
    :pswitch_23
    const/16 v3, 0x3e

    if-le p3, v3, :cond_0

    .line 3205
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3207
    :try_start_3d
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion63(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3208
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_24
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_24

    .line 3213
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3216
    :pswitch_24
    const/16 v3, 0x3f

    if-le p3, v3, :cond_0

    .line 3219
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3221
    :try_start_3e
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion64(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3222
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_25
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_25

    .line 3227
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3232
    :pswitch_25
    const/16 v3, 0x40

    if-le p3, v3, :cond_0

    .line 3235
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3237
    :try_start_3f
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion65(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3238
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_26
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_26

    .line 3243
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3249
    :pswitch_26
    const/16 v3, 0x41

    if-le p3, v3, :cond_0

    .line 3252
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3254
    :try_start_40
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion66(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3255
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_27
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_27

    .line 3260
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3266
    :pswitch_27
    const/16 v3, 0x42

    if-le p3, v3, :cond_0

    .line 3269
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3271
    :try_start_41
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion67(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3272
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_28
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_28

    .line 3277
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3281
    :pswitch_28
    const/16 v3, 0x43

    if-le p3, v3, :cond_0

    .line 3284
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3286
    :try_start_42
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion68(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3287
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_29
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_29

    .line 3292
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3296
    :pswitch_29
    const/16 v3, 0x44

    if-le p3, v3, :cond_0

    .line 3299
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3301
    :try_start_43
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion69(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3302
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_2a
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_2a

    .line 3307
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3310
    :pswitch_2a
    const/16 v3, 0x45

    if-le p3, v3, :cond_0

    .line 3313
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3315
    :try_start_44
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion70(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3316
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_2b
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_2b

    .line 3321
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3326
    :pswitch_2b
    const/16 v3, 0x46

    if-le p3, v3, :cond_0

    .line 3329
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3331
    :try_start_45
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion71(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3332
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_2c
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_2c

    .line 3337
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3341
    :pswitch_2c
    const/16 v3, 0x47

    if-le p3, v3, :cond_0

    .line 3344
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3346
    :try_start_46
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion72(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3347
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_2d
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_2d

    .line 3352
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3355
    :pswitch_2d
    const/16 v3, 0x48

    if-le p3, v3, :cond_0

    .line 3358
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3360
    :try_start_47
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion73(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3361
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_2e
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_2e

    .line 3366
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3370
    :pswitch_2e
    const/16 v3, 0x49

    if-le p3, v3, :cond_0

    .line 3373
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3375
    :try_start_48
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion74(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3376
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_2f
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_2f

    .line 3381
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3385
    :pswitch_2f
    const/16 v3, 0x4a

    if-le p3, v3, :cond_0

    .line 3388
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3390
    :try_start_49
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion75(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3391
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_30
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_30

    .line 3396
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3400
    :pswitch_30
    const/16 v3, 0x4b

    if-le p3, v3, :cond_0

    .line 3403
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3405
    :try_start_4a
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion76(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3406
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_31
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_31

    .line 3411
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3414
    :pswitch_31
    const/16 v3, 0x4c

    if-le p3, v3, :cond_0

    .line 3417
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3419
    :try_start_4b
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion77(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3420
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_32
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_32

    .line 3425
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3428
    :pswitch_32
    const/16 v3, 0x4d

    if-le p3, v3, :cond_0

    .line 3431
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3433
    :try_start_4c
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion78(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3434
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_33
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_33

    .line 3439
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3443
    :pswitch_33
    const/16 v3, 0x4e

    if-le p3, v3, :cond_0

    .line 3446
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3448
    :try_start_4d
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion79(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3449
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_34
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_34

    .line 3454
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3458
    :pswitch_34
    const/16 v3, 0x4f

    if-le p3, v3, :cond_0

    .line 3461
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3463
    :try_start_4e
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion80(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3464
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_35
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_35

    .line 3469
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3473
    :pswitch_35
    const/16 v3, 0x50

    if-le p3, v3, :cond_0

    .line 3476
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3478
    :try_start_4f
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion81(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3479
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_36
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_36

    .line 3484
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3488
    :pswitch_36
    const/16 v3, 0x51

    if-le p3, v3, :cond_0

    .line 3491
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3493
    :try_start_50
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion82(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3494
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_37
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_37

    .line 3499
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_1

    .line 2994
    :catch_16
    move-exception v2

    .line 2995
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_51
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_16

    .line 2998
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_16
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3010
    :catch_17
    move-exception v2

    .line 3011
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_52
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_52
    .catchall {:try_start_52 .. :try_end_52} :catchall_17

    .line 3014
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_17
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3025
    :catch_18
    move-exception v2

    .line 3026
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_53
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_18

    .line 3029
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_18
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3040
    :catch_19
    move-exception v2

    .line 3041
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_54
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_19

    .line 3044
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_19
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3055
    :catch_1a
    move-exception v2

    .line 3056
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_55
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_1a

    .line 3059
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_1a
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3070
    :catch_1b
    move-exception v2

    .line 3071
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_56
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_56
    .catchall {:try_start_56 .. :try_end_56} :catchall_1b

    .line 3074
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_1b
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3085
    :catch_1c
    move-exception v2

    .line 3086
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_57
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_57
    .catchall {:try_start_57 .. :try_end_57} :catchall_1c

    .line 3089
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_1c
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3100
    :catch_1d
    move-exception v2

    .line 3101
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_58
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_58
    .catchall {:try_start_58 .. :try_end_58} :catchall_1d

    .line 3104
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_1d
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3115
    :catch_1e
    move-exception v2

    .line 3116
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_59
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_59
    .catchall {:try_start_59 .. :try_end_59} :catchall_1e

    .line 3119
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_1e
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3131
    :catch_1f
    move-exception v2

    .line 3132
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_5a
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5a
    .catchall {:try_start_5a .. :try_end_5a} :catchall_1f

    .line 3135
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_1f
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3147
    :catch_20
    move-exception v2

    .line 3148
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_5b
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5b
    .catchall {:try_start_5b .. :try_end_5b} :catchall_20

    .line 3151
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_20
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3166
    :catch_21
    move-exception v2

    .line 3167
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_5c
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5c
    .catchall {:try_start_5c .. :try_end_5c} :catchall_21

    .line 3170
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_21
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3181
    :catch_22
    move-exception v2

    .line 3182
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_5d
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5d
    .catchall {:try_start_5d .. :try_end_5d} :catchall_22

    .line 3185
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_22
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3195
    :catch_23
    move-exception v2

    .line 3196
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_5e
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5e
    .catchall {:try_start_5e .. :try_end_5e} :catchall_23

    .line 3199
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_23
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3209
    :catch_24
    move-exception v2

    .line 3210
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_5f
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5f
    .catchall {:try_start_5f .. :try_end_5f} :catchall_24

    .line 3213
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_24
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3223
    :catch_25
    move-exception v2

    .line 3224
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_60
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_60
    .catchall {:try_start_60 .. :try_end_60} :catchall_25

    .line 3227
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_25
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3239
    :catch_26
    move-exception v2

    .line 3240
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_61
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_61
    .catchall {:try_start_61 .. :try_end_61} :catchall_26

    .line 3243
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_26
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3256
    :catch_27
    move-exception v2

    .line 3257
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_62
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_62
    .catchall {:try_start_62 .. :try_end_62} :catchall_27

    .line 3260
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_27
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3273
    :catch_28
    move-exception v2

    .line 3274
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_63
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_63
    .catchall {:try_start_63 .. :try_end_63} :catchall_28

    .line 3277
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_28
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3288
    :catch_29
    move-exception v2

    .line 3289
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_64
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_64
    .catchall {:try_start_64 .. :try_end_64} :catchall_29

    .line 3292
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_29
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3303
    :catch_2a
    move-exception v2

    .line 3304
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_65
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_65
    .catchall {:try_start_65 .. :try_end_65} :catchall_2a

    .line 3307
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_2a
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3317
    :catch_2b
    move-exception v2

    .line 3318
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_66
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_66
    .catchall {:try_start_66 .. :try_end_66} :catchall_2b

    .line 3321
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_2b
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3333
    :catch_2c
    move-exception v2

    .line 3334
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_67
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_67
    .catchall {:try_start_67 .. :try_end_67} :catchall_2c

    .line 3337
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_2c
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3348
    :catch_2d
    move-exception v2

    .line 3349
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_68
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_68
    .catchall {:try_start_68 .. :try_end_68} :catchall_2d

    .line 3352
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_2d
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3362
    :catch_2e
    move-exception v2

    .line 3363
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_69
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_69
    .catchall {:try_start_69 .. :try_end_69} :catchall_2e

    .line 3366
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_2e
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3377
    :catch_2f
    move-exception v2

    .line 3378
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_6a
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6a
    .catchall {:try_start_6a .. :try_end_6a} :catchall_2f

    .line 3381
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_2f
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3392
    :catch_30
    move-exception v2

    .line 3393
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_6b
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6b
    .catchall {:try_start_6b .. :try_end_6b} :catchall_30

    .line 3396
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_30
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3407
    :catch_31
    move-exception v2

    .line 3408
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_6c
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6c
    .catchall {:try_start_6c .. :try_end_6c} :catchall_31

    .line 3411
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_31
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3421
    :catch_32
    move-exception v2

    .line 3422
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_6d
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6d
    .catchall {:try_start_6d .. :try_end_6d} :catchall_32

    .line 3425
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_32
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3435
    :catch_33
    move-exception v2

    .line 3436
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_6e
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6e
    .catchall {:try_start_6e .. :try_end_6e} :catchall_33

    .line 3439
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_33
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3450
    :catch_34
    move-exception v2

    .line 3451
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_6f
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6f
    .catchall {:try_start_6f .. :try_end_6f} :catchall_34

    .line 3454
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_34
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3465
    :catch_35
    move-exception v2

    .line 3466
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_70
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_70
    .catchall {:try_start_70 .. :try_end_70} :catchall_35

    .line 3469
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_35
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3480
    :catch_36
    move-exception v2

    .line 3481
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_71
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_71
    .catchall {:try_start_71 .. :try_end_71} :catchall_36

    .line 3484
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_36
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3495
    :catch_37
    move-exception v2

    .line 3496
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_72
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_72
    .catchall {:try_start_72 .. :try_end_72} :catchall_37

    .line 3499
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_37
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 2639
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_0
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
    .end packed-switch
.end method
