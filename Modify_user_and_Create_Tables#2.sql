CONNECT SYSTEM;

Alter User DBSEC Identified By "secc$1new";


GRANT CREATE SESSION, CREATE TABLE TO DBSEC;


CONNECT DBSEC/secc$1new;


Drop Table SUPPLIERS CASCADE CONSTRAINTS;
Drop Table SHIPMENT_METHOD CASCADE CONSTRAINTS;

Drop Table DEPARTMENTS CASCADE CONSTRAINTS;
Drop Table JOBS CASCADE CONSTRAINTS;

Drop Table EMPLOYEES CASCADE CONSTRAINTS;
Drop Table SALES_COMMISSION CASCADE CONSTRAINTS;

Drop Table PROMOTIONS CASCADE CONSTRAINTS;
Drop Table CATEGORIES CASCADE CONSTRAINTS;

Drop Table PRODUCTS CASCADE CONSTRAINTS;
Drop Table PRODUCT_SUPPLIER CASCADE CONSTRAINTS;

Drop Table PRODUCT_PRICES CASCADE CONSTRAINTS;
Drop Table PRODUCT_INVENTORY CASCADE CONSTRAINTS;

Drop Table PAYMENT_METHOD CASCADE CONSTRAINTS;
Drop Table CUSTOMERS CASCADE CONSTRAINTS;

Drop Table ORDERS CASCADE CONSTRAINTS;
Drop Table ORDER_LINES CASCADE CONSTRAINTS;
Drop Table EMPLOYEE_RANKS CASCADE CONSTRAINTS;




CREATE TABLE SUPPLIERS (
       SUPPLIER_ID          NUMBER(4) NOT NULL,
       SUPPLIER_NAME        VARCHAR2(80) NULL,
       CONTACT_NAME         VARCHAR2(30) NULL,
       URL                  VARCHAR2(255) NULL,
       PHONE                VARCHAR2(15) NULL,
       ADDR_LINE            VARCHAR2(80) NULL,
       CITY                 VARCHAR2(30) NULL,
       STATE                VARCHAR2(30) NULL,
       ZIP_CODE             VARCHAR2(9) NULL,
       STATUS               CHAR(1) NULL,
       PERFERRED            CHAR(1) NULL,
       COMMENTS             VARCHAR2(1024) NULL
);



CREATE TABLE SHIPMENT_METHOD (
       SHIPMENT_METHOD_ID   NUMBER(2) NOT NULL,
       SHIPMENT_DESCRIPTION VARCHAR2(80) NULL
);





CREATE TABLE DEPARTMENTS (
       DEPARTMENT_ID        NUMBER(2) NOT NULL,
       DEPARTMENT_NAME      VARCHAR2(20) NULL,
       CITY                 VARCHAR2(30) NULL,
       STATE                CHAR(2) NULL
);




CREATE TABLE JOBS (
       JOB_ID               NUMBER(2) NOT NULL,
       JOB_DESCRIPTION      VARCHAR2(80) NULL
);




CREATE TABLE EMPLOYEES (
       EMPLOYEE_ID          NUMBER(4) NOT NULL,
       FIRST_NAME           VARCHAR2(20) NULL,
       LAST_NAME            VARCHAR2(20) NULL,
       JOB_ID               NUMBER(2) NULL,
       MANAGER_ID           NUMBER(4) NULL,
       HIRE_DATE            DATE NULL,
       SALARY               NUMBER NULL,
       DEPARTMENT_ID        NUMBER(2) NULL
);




CREATE TABLE SALES_COMMISSION (
       EMPLOYEE_ID          NUMBER(4) NOT NULL,
       COMMISSION           NUMBER NULL
);





CREATE TABLE PROMOTIONS (
       PROMOTION_ID         NUMBER(2) NOT NULL,
       PROMOTION_DESC       VARCHAR2(80) NULL,
       PROMOTION_TYPE       VARCHAR2(20) NULL
);





CREATE TABLE CATEGORIES (
       CATEGORY_ID          NUMBER(2) NOT NULL,
       CATEGORY_NAME        VARCHAR2(80) NULL
);



CREATE TABLE PRODUCTS (
       PRODUCT_ID           NUMBER(4) NOT NULL,
       CATEGORY_ID          NUMBER(2) NULL,
       PRODUCT_NAME         VARCHAR2(80) NULL,
       PRODUCT_DESC         VARCHAR2(512) NULL,
       STATUS               CHAR(1) NULL,
       COMMENTS             VARCHAR2(1024) NULL
);
CREATE TABLE PRODUCT_SUPPLIER (
       PRODUCT_ID           NUMBER(4) NOT NULL,
       SUPPLIER_ID          NUMBER(4) NOT NULL
);




CREATE TABLE PRODUCT_PRICES (
       PRODUCT_ID           NUMBER(4) NOT NULL,
       LIST_PRICE           NUMBER NULL,
       MIN_PRICE            NUMBER NULL,
       MAX_PRICE            NUMBER NULL,
       PURCHASED_PRICE      NUMBER NULL,
       START_DATE           DATE NOT NULL,
       END_DATE             DATE NULL,
       PROMOTION_ID         NUMBER(2) NULL
);



CREATE TABLE PRODUCT_INVENTORY (
       PRODUCT_ID           NUMBER(4) NOT NULL,
       QTY_ON_HAND          NUMBER NULL,
       QTY_ON_ORDER         NUMBER NULL,
       DATE_ORDERED         DATE NULL,
       DELIVERY_DATE        DATE NULL
);



CREATE TABLE PAYMENT_METHOD (
       PAYMENT_METHOD_ID    NUMBER(2) NOT NULL,
       PAYMENT_DESCRIPTION  VARCHAR2(80) NULL
);



CREATE TABLE CUSTOMERS (
       SALES_REP_ID         NUMBER(4) NULL,
       CUSTOMER_ID          NUMBER(8) NOT NULL,
       CUSTOMER_SSN         VARCHAR2(9) NULL,
       FIRST_NAME           VARCHAR2(20) NULL,
       LAST_NAME            VARCHAR2(20) NULL,
       ADDR_LINE            VARCHAR2(80) NULL,
       CITY                 VARCHAR2(30) NULL,
       STATE                VARCHAR2(30) NULL,
       ZIP_CODE             VARCHAR2(9) NULL,
       PHONE                VARCHAR2(15) NULL,
       EMAIL                VARCHAR2(80) NULL,
       CC_NUMBER            VARCHAR2(20) NULL,
       CREDIT_LIMIT         NUMBER NULL,
       GENDER               CHAR(1) NULL,
       STATUS               CHAR(1) NULL,
       COMMENTS             VARCHAR2(1024) NULL
);
CREATE TABLE ORDERS (
       ORDER_ID             NUMBER(5) NOT NULL,
       ORDER_DATE           DATE NULL,
       CUSTOMER_ID          NUMBER(8) NULL,
       EMPLOYEE_ID          NUMBER(4) NULL,
       SHIP_DATE            DATE NULL,
       SHIPMENT_METHOD_ID   NUMBER(2) NULL,
       PAYMENT_METHOD_ID    NUMBER(2) NULL,
       PAID                 CHAR(1) NULL,
       ORDER_STATUS         CHAR(1) NULL,
       COMMENTS             VARCHAR2(1024) NULL
);

CREATE TABLE ORDER_LINES (
       ORDER_ID             NUMBER(5) NOT NULL,
       PRODUCT_ID           NUMBER(4) NOT NULL,
       ACTUAL_PRICE         NUMBER NULL,
       DISCOUNT             NUMBER NULL,
       QUANTITY             NUMBER NULL,
       TOTAL_AMOUNT         NUMBER NULL
);

CREATE TABLE EMPLOYEE_RANKS (
       RANK                 NUMBER(2) NOT NULL,
       LO_SAL               NUMBER NULL,
       HI_SAL               NUMBER NULL
);

INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1113, 6, 'Product medical equipments1113', 'b_7a2:K1vMUqi4qJR+2^8}`NE9v)Ths1MBSJUWql_>0[{Pi=MK@YY c)y.kg'
, 'X', 'this is a product comment1113'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1114, 1, 'Product hardware1114', 'CEo)=@kd82IB:4OJkre8c.hX:HQ?2Yw63PHM|g5"Own[n)JP{_FPulx^mBIP'
, 'X', 'this is a product comment1114'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1115, 17, 'Product books1115', 'zKbrp7|eM<kUsS73)7)xp)Fqu!rq~wM1N3j`slnwmh6;$. #vw;:YBVpMVdo'
, 'G', 'this is a product comment1115'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1116, 3, 'Product appliances1116', 'v{PW6g@,v ?5t7Gtly/-X:%#|iPP$8et>@L$D5-yv7Q0qiK]GeqIKPyy;(f'
, 'B', 'this is a product comment1116'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1117, 14, 'Product shoes1117', 'l"6Ak9:LUod1`=K%QaEPCyPh`oYI4q}"019$jJ?@<BYF0tQ"\?kLa>BNqoj '
, 'B', 'this is a product comment1117'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1118, 3, 'Product appliances1118', 'Oe!}5KhjEm%~wSo"k=/Euu0AQ""$%vdn=Aorx`vpa?c R@/l"6`v<Z!g#":'
, 'X', 'this is a product comment1118'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1119, 7, 'Product equipments1119', 'ZL+FojMQy\ O*uHQP>$8d{3?pn@C+7F<D{)/ON$;kmQ@W@m,@l<g7WlL;Ljz'
, 'B', 'this is a product comment1119'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1120, 1, 'Product hardware1120', 'm>Y)_YDMm=,VY<<"K2\\,Bn4h`Is*RCrZEv1z|m\IMCu%SY9^w*v=p)W #|i'
, 'A', 'this is a product comment1120'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1121, 3, 'Product appliances1121', 'AHc$gU9*^u_ S1vHNGXSkHDMKZIt{(e/%-Q,L?^9/>x])4:X XVi3P6l$-xd'
, 'G', 'this is a product comment1121'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1122, 12, 'Product carpentary1122', ':d#2- PUa^fR1t]^K4 ^/Y{|*;Kp*?y}3P]Zj|7f,g^p0<88.Xt8{7n?]~'
, 'A', 'this is a product comment1122'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1123, 3, 'Product appliances1123', 'O`r8YoOH\>3@h=!i95CI%eC;1mR/%hK;^+ eX/:l[LYvvu#5M2hceN,aOFH_'
, 'A', 'this is a product comment1123'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1124, 11, 'Product materials1124', 'd;I3AL<Wtb|@{\FQ_!<rk8X}.QHE2+ (_`8D3Z+00)_Bt^APb<KqTbI{[L'
, 'A', 'this is a product comment1124'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1125, 10, 'Product electrical1125', '<`{B]YAo!\o1FS.-7?_4dp$`bR"<-l|O;''Snb!3v;2b)oZ l#*1A=X9 3~_k'
, 'B', 'this is a product comment1125'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1126, 7, 'Product equipments1126', '@=dD!*UB%SQC>UK%Me\3^KE7OO4Z*@T5 Vd3F|%@TMOvi]gfp2>8lVpmjX\'
, 'X', 'this is a product comment1126'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1127, 4, 'Product apperal1127', 'w:T)(Q{I*n;+cV6$~7A9SrvvE$k/AH<t@u^V"s3hW"|vuNpU(0%,P,m>>@8J'
, 'A', 'this is a product comment1127'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1128, 17, 'Product books1128', '?JdyaeJJlW:>1IBhMN4q<qT+3_6v!|-S3=|_]@x^-BO6Urt;lS3T<ODS*{qc'
, 'X', 'this is a product comment1128'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1129, 13, 'Product accessories1129', '}!t7}ni;G[qc(qdJG!3JL=LR''>9oCAwv_#ZN%@.=w^8;G!ylT>F?!1*%@/(B'
, 'B', 'this is a product comment1129'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1130, 4, 'Product apperal1130', '2(^L2.3rg?`Let?G?\]`0ER#| 2cp7#AEW,KJZta-5j-5AXJa}o9gcf0)p0$'
, 'G', 'this is a product comment1130'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1131, 7, 'Product equipments1131', '5-wlw1P5)LrInEf+M_~"|XziQNH=Opq*o%#b?eVavUH_^Oo4o(s.]A!f[@+G'
, 'X', 'this is a product comment1131'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1132, 1, 'Product hardware1132', '@xQu-.,>mE5Gb[)k~AW=K-3rqKF.+B)w[IKUmjn^Z%PVjf. )4^VU662Ew%8'
, 'X', 'this is a product comment1132'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1133, 9, 'Product games1133', '6Ioa|PGwKZG(t6tBsz`%e`Y@*!BQm@!)KfN(2_Y[P<TmJY+-}kx,VAK34k'
, 'X', 'this is a product comment1133'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1134, 15, 'Product entertainment1134', '~T/W}IT|OK|ZT+4K7(A>gMWGU^z:z\^/a_sR7~V[X$Y@%@"YTTRS?"F*d*q'
, 'B', 'this is a product comment1134'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1135, 16, 'Product electronics1135', '3,2+q-k+j(p,z_mnZ"*3Nn;^:GjfL>3cmdug-0,+KaP2A.\H4xYa5d:FYuY'
, 'O', 'this is a product comment1135'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1136, 11, 'Product materials1136', '>OuV#bl~zeMkda1J;ONADIa#M+H[PB8O[!"d4 @*Cv!^;s_!iu{;#<.lZ?3T'
, 'O', 'this is a product comment1136'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1137, 2, 'Product software1137', 'NVgPQxaRT_FP `=A%7"DwT_G<6A5::oa,GRW}F4a0G{|A^4$\c+)eMkm)fk'
, 'O', 'this is a product comment1137'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1138, 4, 'Product apperal1138', 'C6kn#X^cVfHI@tu>[AsAC!S\O6.>lfiKM JT[6zM% ~%).a/(/5< f"}B'
, 'G', 'this is a product comment1138'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1139, 7, 'Product equipments1139', 'N#5HtuQ{UVny+AC'']j2E7N##i3P}mz"T90vz{Q{Z`|\;JS<zjyH5qHI97eGb'
, 'X', 'this is a product comment1139'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1140, 15, 'Product entertainment1140', 'Qngfu(s@a?hoaa#@~U.y3_CKnPv>^lMJIdSC?s~:Si+wthHnE`[C5 @@^%T'
, 'B', 'this is a product comment1140'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1141, 16, 'Product electronics1141', 'n-hMC"v?9*x%,U-s]vWy"#nk)i(9:b-$".1yl)ay>egxCt~77~Wx!]yq7L'
, 'A', 'this is a product comment1141'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1142, 6, 'Product medical equipments1142', 'ZM=,''7''B7VW5>a{Fzm$@i`3<@''u9ZQ7GW E|n<ZLWMUaS?|K}3"-SYzT4Fb'
, 'X', 'this is a product comment1142'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1143, 14, 'Product shoes1143', 'inW^[;Q8"GEQvL5S9l*<hpB-5L(f.J$6)q4lBDqP+NC''rh[>bKo0-{m+d'
, 'X', 'this is a product comment1143'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1144, 1, 'Product hardware1144', '>LL\[i`"u^_W5k,.d,hT/TW>3GrBmut+nqN-t0E|RH3TNX}t9eB;:[~Rt?~J'
, 'G', 'this is a product comment1144'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1145, 12, 'Product carpentary1145', '.eQ.d*{R+7T{)^.V3M-5^(Qs^c1NWUgSb$Ww^K+*-maLzH22 "U]R2JlIb]<'
, 'B', 'this is a product comment1145'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1146, 12, 'Product carpentary1146', 'n<,th+:`A;obYQc''_fg,+h2A-g55@02yJzW5crT<q87%vRM1JjHIvH|%A+'
, 'G', 'this is a product comment1146'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1147, 2, 'Product software1147', 'MZk7Gw`5W[{Y D0_dn?3 ^i(ZvO=b>B1N@S:0x:O.JjK0X*\7<8BirD)R;T+'
, 'X', 'this is a product comment1147'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1148, 5, 'Product grocery1148', 'G''|Ps1=K/s9*^07ser4h_M2g:"\(FH{bV,z_\M%9PQGwR"g*|f$4YJkb)ZY;'
, 'O', 'this is a product comment1148'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1149, 11, 'Product materials1149', '.f 5j<^=.6E[`3Oyq7ia= rgE`fUz6h4!Qg242?uABCeG)E]yr=w;M#THgjf'
, 'X', 'this is a product comment1149'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1150, 10, 'Product electrical1150', 'Q/h-nuEop4Z-He*9F@T$M7dlhI9SygZq+P2[my6rU!e]FfJt|k9~85;Y#ah'
, 'B', 'this is a product comment1150'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1151, 11, 'Product materials1151', 'bv?,?$T%P9uUj,^K7]Glx o-_.2{9n].2a@j2K7cjSVE]cLx!)Nb]ppWM>;'
, 'O', 'this is a product comment1151'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1152, 6, 'Product medical equipments1152', 'b^KWvU>*c{Hz]2Vd=''a8a^w`Nf_!\)V.v0CK,dhGIB|ga:B/w:e!z7%1F,XT'
, 'X', 'this is a product comment1152'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1153, 12, 'Product carpentary1153', '9Z-kGjw@,gI_ Dx;oF"F"XA[@>={ kZ##V/ERYZOvAzfEsRtXHS[-!RZyJhH'
, 'A', 'this is a product comment1153'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1154, 10, 'Product electrical1154', 'C0>X%R}Skgh|.GLsQxgqX.m-]|"xm*-}`6z!9DH>]AFa$Zt$Sa=BWE`!.AQs'
, 'B', 'this is a product comment1154'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1155, 11, 'Product materials1155', 'RL}d}Glu30:.T\ib21^@;EOn nWMtwPzk\E*pP)4nor~A)r2mal9.zR<V2r'
, 'O', 'this is a product comment1155'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1156, 6, 'Product medical equipments1156', 'p~lAS_M;lG O3:fXb3]:;.LN)489J.B)"0DRL\u;3>t(!g]eypM"Ei@)!Zl'
, 'X', 'this is a product comment1156'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1157, 2, 'Product software1157', ']uI0tegDO}F{/C/m*4$%f;pxb2$j2]);ldD3[oE7[-v!q24tT-''A){UA)M{'''
, 'G', 'this is a product comment1157'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1158, 7, 'Product equipments1158', '_<cj/j4U%fAz''XM%m8?+,;Y_\u3@;~aT@w''lg9[v(/yV"DZHY)C|Q=2w,K'
, 'A', 'this is a product comment1158'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1159, 14, 'Product shoes1159', '\Y'':"t^6?J0H:''r[$7>mI^|4Df8$RX|Dsc2+$YlAnjpt16YUUQfV*g+!A??U'
, 'A', 'this is a product comment1159'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1160, 9, 'Product games1160', 'Z3.BS?a`}r#0c[uViz9~Z]@(E5#Q`Q6HU|.E5rwWIYbJ2!?t{[?z3nd!I1t5'
, 'G', 'this is a product comment1160'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1161, 15, 'Product entertainment1161', ')Sp1VxOm/4T|Im^`}BpBLt@zJ~/#[k!+:j9DaoO*PXihrObD;TB+2sSS 52'
, 'A', 'this is a product comment1161'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1162, 1, 'Product hardware1162', 'o;O?6nOO0(sJ,6hp]n;dFf9`U_;!LD}`jYpnX8C`j8eaXs#RBne[x9|FzjAc'
, 'X', 'this is a product comment1162'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1163, 4, 'Product apperal1163', '0{bd9eO,QI''!G Z<3xN!\F^z''fE2SkfS\M} G( U{Jp-[TV1?Jl~*qI8b(wl'
, 'B', 'this is a product comment1163'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1164, 9, 'Product games1164', '`/w%"o([r0D@.9{5,G122]^0l?Uvmz?adsPr|d1IAcjz8(U`t:+K1FMNN|o'
, 'X', 'this is a product comment1164'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1165, 14, 'Product shoes1165', '>W%t4+~-_N,|-KcgfM4p"9,e04CMcg-O"FY ''84h$lqHV0y-{c?~*w/NlHCw'
, 'B', 'this is a product comment1165'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1166, 15, 'Product entertainment1166', ']bue|5cwPj;''9XIs,xbMm_=}oo|xzEqKySo]:(Jx7kYXT~#Ze+pfSJ[Recv'
, 'O', 'this is a product comment1166'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1167, 4, 'Product apperal1167', 'j{enwwsRQmDd<C^AYVzm`OpN~`8fnEsG_''cQM''Pq~KHw+3k6)aRW`z9{F''^'
, 'O', 'this is a product comment1167'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1168, 13, 'Product accessories1168', 'FxNKHnSK/3Y"Dfkb\d)Bj>P@-C''/C:fNI@Kt8LVC o,9CDX~%ir}9ZT=U[l'
, 'X', 'this is a product comment1168'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1169, 2, 'Product software1169', 'yYT%v]3B'']U5I$auy,Ip"ASB$fv''aAhP|Tu#cLeK6T;3v`/U`fG].\^}AK-X'
, 'X', 'this is a product comment1169'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1000, 5, 'Product grocery1000', '#|gS|NomVyJ*aVep"%ByEc=\UeX,aX1y$b5#LbSkcNiA/Lgv}RM%$Y=Yc@_^'
, 'G', 'this is a product comment1000'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1001, 2, 'Product software1001', 'h[\`-.9:]fS-;T0TS8''2f2NSg$tbTd=GA/wPHfE]Q_iZ5_q-|HqF:O=C`Up'
, 'O', 'this is a product comment1001'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1002, 13, 'Product accessories1002', 'W(c%k}wK3xql{q@adLg)n5Zk#eh4G?Kf6eVY-+%4u:_B,p~).>yS42q,In'
, 'A', 'this is a product comment1002'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1003, 1, 'Product hardware1003', '7wy<^HG*}Fu[fHL{Yu1$bg\Q>r_TX!E$ QUc(M*8ueugFO:lg=NRi#h6m|4'
, 'B', 'this is a product comment1003'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1004, 1, 'Product hardware1004', 'O"GH1JQy''?P[(l*8v>1.''B%.:nNieQ}-_>vA9AVY=CE;\"z(= ,;DN^=7wz'
, 'B', 'this is a product comment1004'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1005, 4, 'Product apperal1005', 'w4~oRI''KnQ[JWJdD!7Xo[*!\Jv7rR>9kY-voC(qMdgXW!hOuu''S";%U^v''F'
, 'O', 'this is a product comment1005'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1006, 17, 'Product books1006', 'e[,iAGnm6N{@H3''sPS@~jtmCoJQ4=khnMZN*!Fn ~r7Pg)/V) vr<iiU^~_'
, 'X', 'this is a product comment1006'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1007, 4, 'Product apperal1007', '\d)KKJZusPFWOR~|yxKH''ZVSDT9Nj5~Kd)>bzB #''OXFE;gcOR('':j,!9Cy7'
, 'B', 'this is a product comment1007'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1008, 12, 'Product carpentary1008', 'AYYd;Ju !"I$oMv>7t''AU!,L}M9z[|B\a5tq<<ifyVwU1*Du@eP=afnW''~7'
, 'G', 'this is a product comment1008'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1009, 2, 'Product software1009', 'B^c_xbj3)~n^:,8,PC?3i8>d25h4,y0^HJZPZ@E3Ce~!\Un73v;hOFWUtLt%'
, 'A', 'this is a product comment1009'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1010, 11, 'Product materials1010', 'rQII/uL]@s*>4Gn-{F-$}[@h5=wOV7;8em//v)3/,=6O0>ST{"Qsa|c(oBye'
, 'A', 'this is a product comment1010'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1011, 3, 'Product appliances1011', 'ua9M,P"=)cDT/zt=1@JC95~@V0)t%q*6nWd\aAq^_G''#]q"90l= Cg6]rCC'
, 'G', 'this is a product comment1011'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1012, 4, 'Product apperal1012', '-Sw<)1q<f{qgQGv(!Yg}GtIYAsa{)mNEV|Q9uzX~+x>evKipEpk9Z}NHZ83'
, 'X', 'this is a product comment1012'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1013, 1, 'Product hardware1013', 'k-Sn9j=qa e`=.ltD39SgBI$}n15d9nffRy2*$h-iW.y''PBaa. VJ|i{e$}'
, 'A', 'this is a product comment1013'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1014, 1, 'Product hardware1014', 'YHS`rG2V#.j?aaJzG_P@6;dkQb9~1/1CV>8yU,]TQM"pb!FDJM''::iy++l_%'
, 'O', 'this is a product comment1014'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1015, 10, 'Product electrical1015', 'yYM$:8n(Ox.S2x<+1|0@:Ky+Na+x~-PW/~Q<*R)u>X!94Wu+(;-zPQOH<Y|9'
, 'X', 'this is a product comment1015'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1016, 7, 'Product equipments1016', '__w_p<KF"OV2YN#o7W}9sP_!!KXOVQriV79rV_}x[_NgITBg!:sqiBa+Q0G'
, 'X', 'this is a product comment1016'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1017, 14, 'Product shoes1017', '0Xfo%1/"hs7L"=%"i#fMB@X6KahJ:E /QCOSyXV,\9gv0o)-dq RhGU\;P:@'
, 'X', 'this is a product comment1017'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1018, 10, 'Product electrical1018', '1;8g!|v\.G<NDR1aC1Ti|$lVlmtjtQhhGt!hs(M7T"AD%y)yno:8DDf})-Su'
, 'O', 'this is a product comment1018'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1019, 9, 'Product games1019', 'FV=>88Z^yx3u.#~vP[]0$:uOgQ#U_Chsnq@Y]`Y$r"fI;D<8Zg>W0E0.)@sw'
, 'G', 'this is a product comment1019'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1020, 11, 'Product materials1020', 'ShkTPkcYzD^EY?^2gB9A-phx"w35R9%-m^W85 }7\9-wwoXxPCb"hE=Va~i$'
, 'X', 'this is a product comment1020'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1021, 2, 'Product software1021', 'fh$6]o@\JE[G:%`ArS;v7<^CcO^A<;je!aOjh8M$>-j}(Jg1*}v!@e-K9cWy'
, 'G', 'this is a product comment1021'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1022, 3, 'Product appliances1022', 'CL'',3#>.F1`''u?fFTnNVB\!x2;E(etDpPF9~"FX.Ck%m@'',b;g:zV-$UgL4x'
, 'O', 'this is a product comment1022'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1023, 16, 'Product electronics1023', '~vXzxe?Uw[SDcd.[M#`#="IF8rMxz*X%{f,f''GbZv<_^<<`$k.77z,F0KH~'
, 'G', 'this is a product comment1023'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1024, 16, 'Product electronics1024', 'wZsB`,k,p7E@@bY>*J$!e0v7~6H0,[x@=O:|kKI.wI,Nzp:6p5M/0k(wp<Sl'
, 'A', 'this is a product comment1024'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1025, 13, 'Product accessories1025', 'M/f`=-.#L"t1Pa"1NoKu@<H"8/lnjT1v=_+I\*tg9fF~q2}Vg=3t)0ff?TO('
, 'G', 'this is a product comment1025'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1026, 12, 'Product carpentary1026', 'zja [.kvygVru2NFY!M!csex^\4ZR@JpRzf"-]*w??0*''XW@glU4|I9ZHu[.'
, 'X', 'this is a product comment1026'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1027, 9, 'Product games1027', 'hMb>t$pX>xA]+jM>:GIjnPicK{qC1\urF#^.w2v:*Ja~KgS"raK_8{4IUb'''
, 'X', 'this is a product comment1027'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1028, 12, 'Product carpentary1028', 'Ld{ c:c`5TQtLn|R8MnSoquq''oXA-o_^\7*/|c,|(Sg.;\j4a8)RxVYSUUAq'
, 'G', 'this is a product comment1028'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1029, 3, 'Product appliances1029', '@qk[%IS)P@"Vb+N`''i)bs''G932lL"()Lot0lXof;Udok]H8`>^96yR^T%Y('''
, 'X', 'this is a product comment1029'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1030, 9, 'Product games1030', 'V@52D;z6|\NxORO_zRqb{[g"tN9s+L=\kv5(Y^6=mXhhJ3Y''v`k#.DX6dK9'
, 'G', 'this is a product comment1030'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1031, 7, 'Product equipments1031', 'SZHF/X,/v8AKoLFnA)l/%w9qvrPCNO#3pf5gAuY*qHBQ8J|fb#sQ2`;KNxj]'
, 'B', 'this is a product comment1031'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1032, 2, 'Product software1032', 'Bh~V32B!y4R0`>B7YZvDu`1>_@_!FJ|sq Vc[Kwz54ToUxtF>a?9N")_WZ'
, 'O', 'this is a product comment1032'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1033, 11, 'Product materials1033', '}mRfEyn0To,yf7*3ef~bfcU |QW1AIe"g{zjD)JvR9HVCbho^:AA~}kX*x'
, 'B', 'this is a product comment1033'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1034, 13, 'Product accessories1034', '9vWX(tR[4]]98,>(8im1rSc%HRZrtbk^ "OZ.{3WAF*wF_I7gYi|MKbI2L}'
, 'O', 'this is a product comment1034'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1035, 10, 'Product electrical1035', ':4`.tG(Q`Y0w)93.=1,EpB.rAI5|Xf:Nl"U~?N2+qxQs7`YDsUW=Af2\^u+M'
, 'X', 'this is a product comment1035'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1036, 3, 'Product appliances1036', '!N[fvIhE9/+]9)$h75 l;yMM+Lx`LNq3YM_I=!''sT~4qGEOJr_cFH\p-{TGD'
, 'X', 'this is a product comment1036'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1037, 16, 'Product electronics1037', 'Yr]k(V+,\l54_b@}w~-\(u,bAU#(n6]ag2k<IRR,7)sC*iZh,)2P;$?zI`tv'
, 'G', 'this is a product comment1037'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1038, 14, 'Product shoes1038', 'mD~"P)6s+/("!2_fLM_5Y*;}\1s`37<AQ7+EL@]fx5+3czkkI)vN!)gKVsbd'
, 'G', 'this is a product comment1038'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1039, 6, 'Product medical equipments1039', '5\G3GMS=MEbjH=''j'';j/5@%m(+m+mtrC@HSa79:2,t?k''0RSq^ryaX#eR"S'
, 'B', 'this is a product comment1039'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1040, 6, 'Product medical equipments1040', '1qe,>*U?B|40+{<QWAzj`%OMv*rK''}`K-w94JBGSPg#jn741E`>cXlv){YWF'
, 'B', 'this is a product comment1040'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1041, 2, 'Product software1041', 'kOuMDV?d%()}UP=c_<k2/`jXU*QqZTY4#F6HA/|9:N_t4vQWFhkg''tpAYG@ '
, 'X', 'this is a product comment1041'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1042, 3, 'Product appliances1042', 'x(O?Fw_:}ykK''DW<0{r>YbIKU\nVHM)uBin''mt2OQ34s,_1">LfycTEOe>uo'
, 'A', 'this is a product comment1042'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1227, 9, 'Product games1227', 'fm$PdBFg~1lkb<1$weIv;GVt1}Xb|88jcUqxiTy7E_mja12G_}Tk%Cxl\4b'
, 'B', 'this is a product comment1227'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1228, 11, 'Product materials1228', 'Rbg_dLq+;>E7b|Ng(Y^V8i=\cP2''[D5My-?R8S2LQmw`Q;mLSK4MLw<73ygA'
, 'G', 'this is a product comment1228'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1229, 15, 'Product entertainment1229', 'Y5Kej{Qa5YHV8j%+*8|FU)=Rd.(''t*\kb|Tb\$|$''|#L8R$GO1A=K/Z?CSm`'
, 'O', 'this is a product comment1229'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1230, 2, 'Product software1230', 'NxW|:un#/15!sm[Ay5?ID@:7,''QBCc2L|_y=B(U4Xe25,''QUTc}3!@FZ *?^'
, 'O', 'this is a product comment1230'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1231, 11, 'Product materials1231', 'O-p0>6v2USzQ_QHkl`jPUE%X''}i:{{*AJuQL#9()P5^dI-3<kZu$^ZW+[K;'
, 'O', 'this is a product comment1231'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1232, 4, 'Product apperal1232', '8w~q#-Tbsv2!0:o2lDiE1![d]L''Bl`$R (C9k9-!+Nlj0sqG{u!\<oevE4p'
, 'O', 'this is a product comment1232'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1233, 14, 'Product shoes1233', '5s~V:{T|3wsV1AtN,ZC(~*PjIE.X*YsBu*''gdq?oM2~2>rQh.4{>E_:./D'
, 'G', 'this is a product comment1233'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1234, 10, 'Product electrical1234', '@*#y^x''gTLJp;~=n^z/=mx9#095L>.20Bi,,''yr?|YI39.$ZIL|KObC:</+'
, 'B', 'this is a product comment1234'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1235, 5, 'Product grocery1235', 'ydn5|G8b}whg!@''>^Ze3wnpVJ_y8D=tX/2Wq:Rq#S34~kV!"t#C$''''P0N05'
, 'X', 'this is a product comment1235'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1236, 14, 'Product shoes1236', '.<-+AY;ryA2my3dFqX@b><KEFi^Cm^^`/1_Tn;_QB5c}VhMy*Q2NQ8iT''lN/'
, 'X', 'this is a product comment1236'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1237, 5, 'Product grocery1237', 'S)RqCiODw5n$`u%x@Q;pq?vH56}.d(63Zu(''g''-E0xVsEV2+B]AO1Ci?Q!('
, 'A', 'this is a product comment1237'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1238, 15, 'Product entertainment1238', 'WR,v,H|2?QKqd8v*T<X\O49Z|yG)0Ymdw<pb=BiQ\Q5CYF;ww.Q<+AULS ='
, 'G', 'this is a product comment1238'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1239, 1, 'Product hardware1239', 'w7n<U"Z`\1nm *ZTS$rVZMe/;Dpp @.aiKmjF5(w*uf/[w`uZ?+[jhz3\`.V'
, 'G', 'this is a product comment1239'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1240, 7, 'Product equipments1240', 'BF]]YG?bM]yYe7EFvd{Mk**tF,{Aj~J?gS@Vz[.TUypr00!*A\[BNs8miZ{'
, 'G', 'this is a product comment1240'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1241, 4, 'Product apperal1241', '.lFNz<3!UZL^mA|:+ hiXd9rc-R.<h:j{z$t.''2e\W!K}?h 9WT3`K1rzx\8'
, 'X', 'this is a product comment1241'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1242, 2, 'Product software1242', 'kQVQT{H/!hWj5V%#r|e''A}5K]wta.5T~83)VGFOjhqCjjeN%pa!~7<yJJK3c'
, 'B', 'this is a product comment1242'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1243, 4, 'Product apperal1243', '/:{aA]}Tm[o)q-ddQNYu`EQNJb_<:YD_%eSeHh;=a`ks,{!Kx$Bt)cLY|\}\'
, 'A', 'this is a product comment1243'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1244, 5, 'Product grocery1244', '4sBCo;u "3/EimARzCg#2C=q9#BRB`+P1$$[/"|$^)J-bK7H}d_0!U5Nveu2'
, 'X', 'this is a product comment1244'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1245, 17, 'Product books1245', 'P473!yp?WZL20toT:8h#cC7A~)iym-%M8v=L(Tjn#Kwpp+Of_hYV5CP=".o'
, 'O', 'this is a product comment1245'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1246, 2, 'Product software1246', 'moQi^9J[C=c`si5CqfhSTEBH~VyK</KX^U6V*QLOmKA]DkX57''Uc5I?lFK6{'
, 'A', 'this is a product comment1246'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1247, 8, 'Product home design1247', '4#sy8~<ar_2+1x1z^6]O0RYjF"LRSGaRaEY\`NKuI2g]GE}$%{FN#`[*uGk'
, 'A', 'this is a product comment1247'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1248, 10, 'Product electrical1248', 'DFBWdnZ`GT`p7mz hJ,}s"W)=]XmE0Esq9"vV8)lSdv44I$J7s;m+mb${E*'
, 'G', 'this is a product comment1248'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1249, 1, 'Product hardware1249', 'T9nbhn$l<0$2)L[SDuM*3<4Vv5H"V9]''BH_#;Mqf6;''E:gB''zIO><5,1$,j'
, 'O', 'this is a product comment1249'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1250, 7, 'Product equipments1250', 'at^Xc6DyN;[1TON$V^q^x@rNi8FTKI[0fFo =j56]b,} lAkj$c%+9oL-.0'
, 'X', 'this is a product comment1250'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1251, 12, 'Product carpentary1251', '+5aK2r:c;4B~]x-4;U<+ZWbK\sL}0}l@L?/>q;Q\!-#A}9N+"J1hgCMg*/IB'
, 'O', 'this is a product comment1251'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1252, 15, 'Product entertainment1252', '%gTQ>O4^q<b@LXp2W_?^fxA:)VOYacBVEU^Bq3x@Hdj^BYUHIm1<3B.>$+!'
, 'O', 'this is a product comment1252'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1253, 4, 'Product apperal1253', '67rBb?ljR E+>*Rv@Q =j}wedcZiCj/X;''N}/D)mT-;n+c_?Bv ,>z{N,'''
, 'B', 'this is a product comment1253'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1254, 7, 'Product equipments1254', 'y,<MY<9w G?UJ''m#JE$}`C3)+Tj4VDf?5C;/JUg,, um}n/hA LmKYa`''b0'
, 'B', 'this is a product comment1254'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1255, 12, 'Product carpentary1255', '85j[et\V/VFzl_3CrMU8#"}IEuK}@,V Aw\\c[E?@h{9N^|TS6@e3`J],7Z'''
, 'O', 'this is a product comment1255'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1256, 1, 'Product hardware1256', 'WQN#WP;Xb36QQQ`{}y-kdSm!^N/7cfo}polSjj8_gjhr8s\HX9#?[p46 ^;;'
, 'X', 'this is a product comment1256'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1257, 5, 'Product grocery1257', 'VT#$==x[fdu^|HKI7h3V?W$4qN(o#vo4knn0Um9/>0b=%<^Niqr[o0kFR,u'
, 'O', 'this is a product comment1257'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1258, 6, 'Product medical equipments1258', 'ipRTenS7dYUyutDscc[AzKs(\[>zePjW*brvQq<!8%chg!dtP#s(B4=FMpOK'
, 'X', 'this is a product comment1258'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1259, 6, 'Product medical equipments1259', 'on<IpHfau{i@*cLX|-_2$(e(}WTCCr2,pUNT1Ob[q:D}kom:S-$TS''HnGql4'
, 'X', 'this is a product comment1259'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1260, 6, 'Product medical equipments1260', 'mgR9t<405nG$1owSCReYwvyZz9G;iMIQCDS9:  #){25DL[kA-Kd,7Ti!zU_'
, 'A', 'this is a product comment1260'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1261, 14, 'Product shoes1261', 'aX4{>LpwWMNwo=DVG=Gs!vd~<E@)y%^b\>wPb6E39p;"Pm{''HnVVO\}~T9'
, 'G', 'this is a product comment1261'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1262, 9, 'Product games1262', '[4kGIRSiia.M/#GSzDn0`PU<a\r~i5f!G8OmV;W]6v~Z~#XCndfi(l=p_F4'
, 'B', 'this is a product comment1262'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1263, 13, 'Product accessories1263', 'j2gF|}Yc+YZe/;PYt%KXeT>S>9e_cVq''jF]t}5b/2}Ut";baB=8-h''n*LM''a'
, 'X', 'this is a product comment1263'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1264, 10, 'Product electrical1264', 'jv 8Z.P3i''#!Ngo"6aV}lM]a17sdVSaN''261#ROMiE?fuY)%k#Lt/3/|.s|2'
, 'B', 'this is a product comment1264'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1265, 12, 'Product carpentary1265', 'bp::3R;?O ''uec(gg};AYffpK5''4Cee2>%`R91yXsy2X7{vzJ6WyI$.''BNW'
, 'O', 'this is a product comment1265'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1266, 5, 'Product grocery1266', 'Rn%hI~t"Amq5T2~bhG_>k=/iAFG/*Q3LG+\C2N:=em_jjx-lVg`:tGks5MwS'
, 'O', 'this is a product comment1266'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1267, 9, 'Product games1267', 'NhyOYfa9!N5@)V7<Ww.)J y~@\YTwdWh`=:QL3.<k)jq-dCkCVBSL(oFS$Q'
, 'O', 'this is a product comment1267'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1268, 8, 'Product home design1268', '#(/R[[$JJsc7s<-^C-!0wK1_YM4Bl~e66L>dFuW/8P[K_a+K|Hd|}^y\UDtH'
, 'X', 'this is a product comment1268'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1269, 11, 'Product materials1269', 'a`@#|:3en[^]\W.=,Wvy?j]`slp4.!`:pYTXfrGz(\AU,{''4M>448KVN28+'
, 'G', 'this is a product comment1269'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1270, 6, 'Product medical equipments1270', ' `546CKU854|<twYg):0IB:-p?kld$gH[=p=e!b5<IKZ*,r4_hBaMW"p!"!z'
, 'A', 'this is a product comment1270'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1271, 8, 'Product home design1271', '~tR%;"vZo%RejSN.AP)/O2[j:]?r9.5a+oNf]!gb93N.6|eCB*1Q.$~9RrwT'
, 'X', 'this is a product comment1271'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1272, 4, 'Product apperal1272', '=zt"LIT7qZdW=e0B.]gPDH24z]bF<n.%^.5{Wj4X~(aN7?F-v;D<|CA8XXHh'
, 'O', 'this is a product comment1272'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1273, 5, 'Product grocery1273', '<PiyStQEz-eJ \gXBqx(c92O=8f^dpNQ)h"6DheA;\eExe|d+R`-#K3ZhPX9'
, 'G', 'this is a product comment1273'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1274, 13, 'Product accessories1274', 'w$vgaDEMz^O_M]~05IjHkh<b,r:[P+j]F2EGi?3wDZ2/k"[H$TyE"#c$w1C2'
, 'O', 'this is a product comment1274'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1275, 9, 'Product games1275', '+Aqt''8}3(Y%}WWkx,1H4!R/Nb>DhY;P?96P:Hi6d#*SQ}m{o6@EDe__n_6^a'
, 'O', 'this is a product comment1275'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1276, 10, 'Product electrical1276', 'SBoU9!B"]/;|f~A,?x^i.?z1.yM/||9i''s_mS@pZ R=,D''k~g? l"O`a=>e6'
, 'B', 'this is a product comment1276'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1277, 17, 'Product books1277', 'le#{j:?2f?L|uRGg1v:N|~LzLE2F%Q|]A#O(Fd:S?5<v@I7qYWlb6KW9+5Bo'
, 'G', 'this is a product comment1277'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1278, 14, 'Product shoes1278', 'p(C{=8b;Q,VE>Idm|~);|UvL9rx2#+\c1B4Y,SCe/2!_1E?(5L+hshU]n~'
, 'X', 'this is a product comment1278'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1279, 9, 'Product games1279', 'mw5>yZwU91l,2+z.z7UN?${vs3A!BdtzLY%*mx6JW-5GWwo ,-/#L2b+W?='
, 'X', 'this is a product comment1279'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1280, 6, 'Product medical equipments1280', 'Qekq6 %1XSDkvw+sft?O0F1''^X1EG-fg0C LH\8QCEw$''/AxXK''PcQt1>|8^'
, 'A', 'this is a product comment1280'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1281, 3, 'Product appliances1281', 'yiwE8?TDF*;8S7UR!7$8u+_[yOA8+VI3<;j1D[Sg$sdZh:%vIC6.inHs:9]C'
, 'G', 'this is a product comment1281'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1282, 16, 'Product electronics1282', 'WbFJxs*;,hs_EdRCrWGtFq(VUHU<[,JKz/T]D@|U-+n0S{8.q%9=p_9{O '
, 'A', 'this is a product comment1282'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1283, 4, 'Product apperal1283', '6fQ''xH=jPx c6zn@dGNnZMldHJ/i.[''N\T-zZL1/U;@8`!~D}oo|$KyQ)'
, 'B', 'this is a product comment1283'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1170, 1, 'Product hardware1170', 'r$2K9-PHB0`e$y#cwdN?eo~GO> #[cHYPH TAH)RfBLLW1AWcojrI~DCC3Nt'
, 'A', 'this is a product comment1170'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1171, 15, 'Product entertainment1171', '"sYa:FB-6^({k>"A 4/ku%cl|t\OJ4C,F@$grz?W7kkW1KADWR~EzVg h61e'
, 'A', 'this is a product comment1171'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1172, 11, 'Product materials1172', '9] ,d_9Ax7 {D(Q%1UH[tEk+-0W5NNaX68xQ7Jm:[XOCML\yV1r+FqFmXB3'
, 'G', 'this is a product comment1172'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1173, 3, 'Product appliances1173', 'z/OxM[R?@m.w BrHcAK<YtS $p;dFFhJ,R| !l}he)sI~ow+/$^m$Oz4A52'
, 'A', 'this is a product comment1173'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1174, 1, 'Product hardware1174', ')kz`u!C_GnIK@eYdL+4uzRJvd_Mg0$zujcG~um_7fTZEEGh{''H70eMpmKII'
, 'A', 'this is a product comment1174'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1175, 2, 'Product software1175', 'V2SpK6T9{4`o;Az3rl(exvRld7.p|.7J;F''[yae0h8RQ`ad[T0B|X-<IabQ'
, 'X', 'this is a product comment1175'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1176, 4, 'Product apperal1176', 'PFO(vw<\y$VA9KW5RAl>4$U;Ss|)Yo]3-`p/Km>\i2vImUm_]6!vVi}%;M1P'
, 'G', 'this is a product comment1176'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1177, 13, 'Product accessories1177', 'p''eGQd:vq=Scg"ZD{2+~ 0Z[9I.#`4h/dOZH/(M_|2ziy2.y7GL2aCV*QsJ2'
, 'A', 'this is a product comment1177'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1178, 16, 'Product electronics1178', '''Vl.-w+(%xDhyBhVPpZ5BW?:6D%[)+T7j@(a%:3s[N5,%--[BO_UQBAl24h'
, 'O', 'this is a product comment1178'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1179, 1, 'Product hardware1179', '\<dd/J ]|K-@oAGeLuXte1ZNu$}Tpb=wPYA]_-b+Xhb@"|8n7F''yz\eRAb: '
, 'X', 'this is a product comment1179'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1180, 3, 'Product appliances1180', 'UM%O}PO+p_<5g/s>-KOk?$Kq<\^mK9X^9apQ(*uvc=b*P$`lijlLB!@B,]'
, 'X', 'this is a product comment1180'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1181, 6, 'Product medical equipments1181', 'DJdx~'':8}4%/C3vo),_HL:n:y!E?0MLU[obD}BO9f|-}d=K. IT*Yi^Df>>'
, 'A', 'this is a product comment1181'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1182, 5, 'Product grocery1182', 'eTouqg1:@Bs\4F1X:IyJzIi8,zB/![f)$*\nt0~]n"\]{;2%(?1:h"!qO3%s'
, 'G', 'this is a product comment1182'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1183, 7, 'Product equipments1183', 'CDLPK*V16)KV)we|>5:SIi^hzS=ab:)C#<R)gSMI/Tu:2N ?(ifO]#a?xj3/'
, 'A', 'this is a product comment1183'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1184, 7, 'Product equipments1184', 'U:E~_pK3GMj1n\9^)$>%2A>jc|''e8,4#cUTV,^bGmrzV-vbjC8oEPbK97Lex'
, 'G', 'this is a product comment1184'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1185, 17, 'Product books1185', '7+#?g{<{''vv:[?9!U''5v,io`={#:P*?ySq2cRIsib;RLdjd"AMDqcmAT(Y9'
, 'G', 'this is a product comment1185'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1186, 2, 'Product software1186', 'vZh)~/h-k8ChCpTTb^IG-4xaO[xl}YjDKEQ[NwP;d6hc8B%3QNgM >F6av|'
, 'G', 'this is a product comment1186'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1187, 14, 'Product shoes1187', 'w1dh; ?L%}C`0pL<fc.GTKZD1[.<OF=pa!MRh$eH$W3_Xz=%*E*KHD3*ms%j'
, 'A', 'this is a product comment1187'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1188, 7, 'Product equipments1188', '>g~q3xt3ej<A''-GwJ<"9hxjQzPtS=/a$1$JFXN.#pFg2Yp=^Fo-nc2/98tFQ'
, 'G', 'this is a product comment1188'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1189, 2, 'Product software1189', '7wnfh`\V{;bjKBi)0B@#B"Aq>JxpwbFz`.Qr6G9z*ZY1N;@[YxhSKIUBhXa'
, 'B', 'this is a product comment1189'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1190, 7, 'Product equipments1190', '|w|q<?Y1C+L{]TP]3y$qZL.O|=Jf37yE2w{wxk`_L)UV>%*\PF[3/S2z6GYP'
, 'G', 'this is a product comment1190'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1191, 10, 'Product electrical1191', 'WU$IsVA1=_$ZIxQ9-NdzCk-AH@UHQ@85QRJ-_6H=U"%-`l@J{NUsC`x}E~<'
, 'B', 'this is a product comment1191'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1192, 2, 'Product software1192', 'JS2V%WXhaJ$g,)$XMkDo+<t"24vRg6Ba{P,(\fJNkNc[^x{/dC5+Y}d\h**l'
, 'G', 'this is a product comment1192'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1193, 14, 'Product shoes1193', 'J]{1oioO''9:(Kj6p1vW-]A4''>dZ6uKbu-g_TEOH$H KauonvT@8g/##iCVHe'
, 'A', 'this is a product comment1193'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1194, 4, 'Product apperal1194', 'E5"z\p:^uZw$nT2$}sr~Of_Q?):[#m9J{)S1OeRLE''=B("]JJHke:fA$w'
, 'B', 'this is a product comment1194'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1195, 9, 'Product games1195', 'M/s.BfajQALz=HXh>|iQ''A>t!l!"!P|uXASJ%%rS~wEe5>$Dd+V o\B1rt0'
, 'X', 'this is a product comment1195'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1196, 7, 'Product equipments1196', '_`*b!FCNK=>t08<`B:ewW"p.?''L7do=dS^bxl*cjAcY;n=P \vkM25F gWze'
, 'X', 'this is a product comment1196'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1197, 4, 'Product apperal1197', '4 {"n|B!Kc}@3F?B.|~8ev%ce<6]^#jwj>eI81>{c[8 tRWT|fp`]<Ey<3_N'
, 'G', 'this is a product comment1197'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1198, 1, 'Product hardware1198', 'y6#diLX]?rX79ZI]9b#(>=?1q(QFw8?83g@"LM1vGU~*;(y^\@<~k??l>U,b'
, 'O', 'this is a product comment1198'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1199, 13, 'Product accessories1199', 'vRZy:e)[U`9"2ZE:oOHnFcX^%R=Md3F(J"P9pDcP@vCOZ1Z/<gDSG?W|wG~'
, 'A', 'this is a product comment1199'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1200, 16, 'Product electronics1200', 'c!ci;$ )k0Fk>"u4nB;a"-R}Qzw9jtGR$`_SZ;F@cTbU=SF@BYI-LNiS^bU'
, 'B', 'this is a product comment1200'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1201, 15, 'Product entertainment1201', 'Q>5(Lq]1[0''oDWJ''EFsUBF8D2cC5CQldVl!U3O/WG2~"WTs1G4{(:dDxLa'
, 'A', 'this is a product comment1201'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1202, 5, 'Product grocery1202', '~Afsqykz7|n''TE~l8DNwI1LkQ*O9ckCNP><%ynSkq OiKzuS)rqvsczPK7.V'
, 'O', 'this is a product comment1202'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1203, 13, 'Product accessories1203', 'Ih<+,N5RY+E}au,C?[}A0WO> |UJ[`~}T.,\8aMO^NqTm '';,JY>/7NJeqVh'
, 'O', 'this is a product comment1203'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1204, 3, 'Product appliances1204', 'P/9QZzXZs~*ou}XWY,G/ijwNH;!bEHv~_x!MOF[z:7;O=hn)W."@T)cyK;5!'
, 'X', 'this is a product comment1204'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1205, 7, 'Product equipments1205', 'YSw+>FE4RsDb_(SgW J$$zR[x+46Otv5N2CYvb|B|{qbI)p;yu?9{v,R^-Bm'
, 'B', 'this is a product comment1205'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1206, 5, 'Product grocery1206', 'J"''g=WjQ+T|=gM$Dws"TPLk$h.?eH2 HE%d/:4Z|pw4''g!;%Gaar:(A30GNe'
, 'X', 'this is a product comment1206'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1207, 14, 'Product shoes1207', 'zPZaM"b_Ahk6[8M()0o!Xc;B[VL4u%!VMKYa*K`]n3w=+h0KC!I(I/W''''vC'
, 'G', 'this is a product comment1207'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1208, 2, 'Product software1208', '6o5Fxfc.exCh?dLKn Wu<?+1.USP%30vM$Yp$owvDgihmvQ~W_}3c4uDFiv}'
, 'G', 'this is a product comment1208'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1209, 16, 'Product electronics1209', '3}}YDUDB4hB_*7]0e6QdiG;snQo~d}*CfD.C<t3A"]>zq+\<\hAzA(lOJ'
, 'A', 'this is a product comment1209'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1210, 7, 'Product equipments1210', 'CMWPfmNSRD(80$d:,FP+.Y@_@307oR^_BkqiLmNEJ3uL`N[''hYx^$dyc`hgV'
, 'X', 'this is a product comment1210'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1211, 6, 'Product medical equipments1211', '3u0z"\q4_WZFXo(|g)l)vs7XC$TZ@mzb;Z/w)Sb<^D!QO,aamNq^KXfWyeUC'
, 'O', 'this is a product comment1211'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1212, 8, 'Product home design1212', 'wz3i?aCj9FMmZF!x;1SG:lFb:6@e<TAZ7r/@4swz);=MLR#iM-o0qP32TP\'
, 'A', 'this is a product comment1212'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1213, 5, 'Product grocery1213', 'FQ:\/n;ytEMpt@:xe%dNUMFrnJG_}KY?LCxL=BGGI7>#1Jj78v#''*]X5{a<-'
, 'G', 'this is a product comment1213'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1214, 5, 'Product grocery1214', '9AiG=3ba@/=$Qgw1*''BJf(*3UI%6YX8`i3_\6t,,GU{Tn#oc=>,$5E)nko]w'
, 'A', 'this is a product comment1214'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1215, 14, 'Product shoes1215', 'B+C|`h\%>R\> U+yvrg2:o~BPU$=T$pO7jR\>L(/6z\,YA@!bS"whk>s`G;6'
, 'A', 'this is a product comment1215'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1216, 14, 'Product shoes1216', 'UU=0{>"4).mE?t2?D4*6>p/Cw3ms,y^dT,XK\UJ0QyAmz,b(jNQU^]yNP~o'
, 'B', 'this is a product comment1216'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1217, 8, 'Product home design1217', 'rnby~jQhiTe$H$9|rLba@IjXX3%+IvYI9rLy-?cv7mnwVn\PF23@:6UL#hI'
, 'A', 'this is a product comment1217'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1218, 12, 'Product carpentary1218', '2$H2}VD}t+:RYw9G)~E9Lc.0u=\RCpLv{` mN{mQ[adl8S^_KI"R-q=)A%dA'
, 'O', 'this is a product comment1218'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1219, 8, 'Product home design1219', 'tpk;A)s''yea+''d8moBf_Qbi!>ee0vmcCG}v-[YE.T)8F_-L)dkr+[v/Q"Q'
, 'A', 'this is a product comment1219'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1220, 1, 'Product hardware1220', 'j=-_2}rsG5P<h?wCvMGJR$"IZSy!XwnFvRmf(+:(C|EN+kNSDW|TU#+Eq''`j'
, 'G', 'this is a product comment1220'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1221, 16, 'Product electronics1221', ';?h?$qJ3K:Kly]oQ|~+vU.{zliZOR}mVH,=I@V~zmoEw3FU)E|~7yq]()CnV'
, 'G', 'this is a product comment1221'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1222, 15, 'Product entertainment1222', 'isGh7;4oLkoPoiUQ%3fZfLpL^QP- 1ohn6Y\3H6"t6Nn!OCb<p~V#aeIFwu8'
, 'X', 'this is a product comment1222'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1223, 8, 'Product home design1223', 'X;"J.#2kSyJ6Jh|5/{COd$rV25.Pt_Mo>wa\r4<w]f''J@ vuEiH[<@[kQ1{$'
, 'O', 'this is a product comment1223'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1224, 12, 'Product carpentary1224', '\rq,r=|9-mbJz%%iMX W,2 *[p)]`UtxjPrzh>:$d)5C`B**DRh(6cj8c{iT'
, 'G', 'this is a product comment1224'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1225, 15, 'Product entertainment1225', '3x>VEcC?n2a5{mT+4 Cqew9_2OL]P\1M}#`[(%ay<gdukn 9''nPM.REIk5v'
, 'A', 'this is a product comment1225'); 
INSERT INTO PRODUCTS ( PRODUCT_ID, CATEGORY_ID, PRODUCT_NAME, PRODUCT_DESC, STATUS,
COMMENTS ) VALUES ( 
1226, 6, 'Product medical equipments1226', 'mm6Bp$r7%P''+W\c)_KW;.}kdsGouRIZOgRIXii#tP@3F-283q!''Dt-:a69C'
, 'B', 'this is a product comment1226'); 
commit;
 







