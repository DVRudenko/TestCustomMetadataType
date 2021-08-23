@isTest
private class UseMetadataTest {

    @isTest
    static void callMetadataTest_positive() {

        PDPMetadata__mdt firstInstance = PDPMetadata__mdt.getInstance('First_Case');
        System.assert(firstInstance.NumberField__c == 12345);
        System.assert(firstInstance.SF_Technology__c == 'Apex');
        System.assert(firstInstance.TextField__c == 'Test Text');

    }
    @isTest
    static void callMetadataTest_negative() {
        PDPMetadata__mdt secondInstance = PDPMetadata__mdt.getInstance('EmptyData');
        System.assert(secondInstance.NumberField__c == null);
        System.assert(UseMetadata.callMetadata() == 12345);
    }
}