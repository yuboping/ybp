package com.xirui.util.cipher;

public interface POS {

    /**
     * 
     *
     * @Title: payApply
     * @Description: 扣减小财神账号余额申请
     * @param @param agentNo 商户编号
     * @param @param billNo 订单号
     * @param @param money 买入金额
     * @param @param operator 操作人
     * @param @param remark 备注
     * @param @return 设定文件
     * @return Rst 返回类型
     * @throws
     */
    Rst payApply(String agentNo, String billNo, double money, String operator,
            String remark);

    /**
     * 
     *
     * @Title: confirmPayApply
     * @Description: 扣减结果确认
     * @param @param agentNo 商户编号
     * @param @param billNo 订单号
     * @param @param yn 是否扣款
     * @param @param msg 买入结果描述
     * @param @return 设定文件
     * @return Rst 返回类型
     * @throws
     */
    Rst confirmPayApply(String agentNo, String billNo, boolean yn, String msg);

    /**
     * 
     *
     * @Title: getBalance
     * @Description: 获取用户余额
     * @param @param agentNo 商户编号
     * @param @return 设定文件
     * @return Rst 返回类型
     * @throws
     */
    double getBalance(String agentNo);

    /**
     * 
     *
     * @Title: getInfo
     * @Description: 获取用余额、经销商等信息
     * @param @param agentNo 商户编号
     * @param @return 设定文件
     * @return Rst 返回类型
     * @throws
     */
    Rst getInfo(String agentNo);

    /**
     * 
     *
     * @Title: addPoint
     * @Description: 给商户添加财富值
     * @param @param agentNo 商户编号
     * @param @param billNo 订单号
     * @param @param amount 财富值 单位 元
     * @param @param message 给客户端基金记录的提示语
     * @param @param operator 操作人
     * @param @param remark 备注
     * @param @return 设定文件
     * @return Rst 返回类型
     * @throws
     */
    Rst addPoint(String agentNo, String billNo, double amount, String message,
            String operator, String remark);
}
