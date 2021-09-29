/**
 * @kind problem
 * @id sample/read-external-data
*/

import cpp
import external.ExternalArtifact

class InfoSupplement extends ExternalData {
  InfoSupplement() { this.getDataPath().matches("%/info-%.csv") }

  int getId() { result = this.getFieldAsInt(0) }

  string getName() { result = this.getField(1) }
}

from InfoSupplement d
select d.getDataPath(), "Found id:" + d.getId() + " name:" + d.getName()
