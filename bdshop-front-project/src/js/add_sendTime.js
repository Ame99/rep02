define(['jquery',"components", "timepicker","bootstrap",,"common", "weui", "", "template"], function(jquery, components,timepicker,bootstrap, common, weui,template) {
   var orderId = components.GetQueryString("id");
    var initDate=GetDateStr(1);
    $("#datetimepicker").datetimepicker({
        format: 'yyyy-mm-dd',      /*����������ʾ˳�򣬻�����ʾ˳����mm-dd-yyyy*/
        autoclose:true,//�Զ��ر�
        minView:2,//�׼��ʱ��ѡ��Ϊ����0-�� 1-ʱ 2-�� 3-��
        weekStart:0,
        startDate: initDate
    }).on('changeDate',gotoDate);
    function  gotoDate(date){
        var  sendTime= date.date.getFullYear().toString() + "-"+ (date.date.getMonth()+1).toString()+ "-"+ date.date.getDate().toString()
       saveSendTime(orderId,sendTime);
    }
        function saveSendTime(id,date) {
 //               data ="&orderId=" + id +"&sendTime"+date;
 //               url = apiUrl + "";
 //               components.getMsg(url, data, "post").done(function(msg) {
 //                   var res = msg.res;
 //                   if (res == 1) {
 //                       $.toast(text, "text", function() {
                            history.go(-1);
 //                      });
 //                   }
 //               });
    }

       function GetDateStr(AddDayCount) {
           var dd = new Date();
           dd.setDate(dd.getDate()+AddDayCount);//��ȡAddDayCount��������
           var y = dd.getFullYear();
           var m = dd.getMonth()+1;//��ȡ��ǰ�·ݵ�����
           var d = dd.getDate();
           return y+"-"+m+"-"+d;
       }

});
