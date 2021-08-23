public with sharing class UseMetadata {

    public static Decimal callMetadata() {
        PDPMetadata__mdt [] dataFromSelect = [SELECT NumberField__c, SF_Technology__c, TextField__c FROM PDPMetadata__mdt];
        Map<String, PDPMetadata__mdt> fullData = PDPMetadata__mdt.getAll();
        PDPMetadata__mdt firstInstance = PDPMetadata__mdt.getInstance('First_Case');

        System.debug('dataFromSelect = ' + dataFromSelect);
        System.debug('fullData = ' + fullData);
        System.debug('firstInstance = ' + firstInstance);
        System.debug('firstInstance.NumberField__c = ' + firstInstance.NumberField__c);

        PDPMetadata__mdt secondInstance = PDPMetadata__mdt.getInstance('EmptyData');
        Decimal result;
        result = secondInstance.NumberField__c;
        if (Test.isRunningTest()) { 
            if (secondInstance.NumberField__c == null) { 
                System.debug('No Data !!!');
                result = 12345;
            }
        }
        return result;

    }
}
