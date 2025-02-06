<table class="table table-bordered table-striped table-hover">
    <thead>
        <tr>
          <th>${uiLabelMap.OfbizDemoId}</th>
          <th>${uiLabelMap.OfbizDemoType}</th>
          <th>${uiLabelMap.OfbizDemoFirstName}</th>
          <th>${uiLabelMap.OfbizDemoLastName}</th>
          <th>${uiLabelMap.OfbizDemoComment}</th>
        </tr>
    </thead>
    <tbody>
        <#list ofbizDemoList as ofbizDemoIterator>
            <tr>
              <td>${ofbizDemoIterator.ofbizDemoId}</td>
              <td>${ofbizDemoIterator.getRelatedOne("OfbizDemoType").get("description", locale)}</td>
              <td>${ofbizDemoIterator.firstName?default("NA")}</td>
              <td>${ofbizDemoIterator.lastName?default("NA")}</td>
              <td>${ofbizDemoIterator.comments!}</td>
            </tr>
        </#list>
    </tbody>
</table>