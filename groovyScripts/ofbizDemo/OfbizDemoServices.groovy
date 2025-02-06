import org.apache.ofbiz.entity.GenericEntityException;

def createOfbizDemo() {
    try{
        result = [:];
        ofbizDemo = delegator.makeValue("OfbizDemo");
        ofbizDemo.setNextSeqId();
        ofbizDemo.setNonPKFields(context);
        ofbizDemo = delegator.create(ofbizDemo);
        result.ofbizDemoId = ofbizDemo.ofbizDemoId;
        logInfo("This is a groovy script to call create ofbiz demo entity with id : " + ofbizDemo.getString('ofbizDemoId'));
    }
    catch (GenericEntityException e){
        logInfo(e.getMessage());
        return error("Error in creating Ofbiz Demo");
    }

    return result;
}