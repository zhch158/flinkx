package com.dtstack.flinkx.carbondata.writer;

import com.dtstack.flinkx.carbondata.CarbondataDatabaseMeta;
import com.dtstack.flinkx.config.DataTransferConfig;
import com.dtstack.flinkx.rdb.datawriter.JdbcDataWriter;

/**
 * Carbondata writer plugin
 *
 * Company: www.dtstack.com
 * @author huyifan_zju@163.com
 */
public class CarbondataWriter extends JdbcDataWriter {

    public CarbondataWriter(DataTransferConfig config) {
        super(config);
        setDatabaseInterface(new CarbondataDatabaseMeta());
    }

}

