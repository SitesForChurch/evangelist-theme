FasdUAS 1.101.10   ��   ��    k             l     ��  ��    $  cd into the current directory     � 	 	 <   c d   i n t o   t h e   c u r r e n t   d i r e c t o r y   
  
 l     ��������  ��  ��        l     ����  O         r        n        1    ��
�� 
pnam  n        m   	 ��
�� 
ctnr  l   	 ����  I   	�� ��
�� .earsffdralis        afdr   f    ��  ��  ��    o      ���� 0 mypath myPath  m       �                                                                                  MACS  alis    t  Macintosh HD               �[�H+  d�
Finder.app                                                     f����"        ����  	                CoreServices    �\Ag      ��r    d�d�d�  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��        l   � ����  O    �    k    �      !   l   �� " #��   " _ Y In Transmit 4, favorites are now objects and must be specified in a different way. Below    # � $ $ �   I n   T r a n s m i t   4 ,   f a v o r i t e s   a r e   n o w   o b j e c t s   a n d   m u s t   b e   s p e c i f i e d   i n   a   d i f f e r e n t   w a y .   B e l o w !  % & % l   �� ' (��   ' a [ we're choosing the first occurrence of a favorite named "My Great Server"(it's possible to    ( � ) ) �   w e ' r e   c h o o s i n g   t h e   f i r s t   o c c u r r e n c e   o f   a   f a v o r i t e   n a m e d   " M y   G r e a t   S e r v e r " ( i t ' s   p o s s i b l e   t o &  * + * l   �� , -��   , 3 - have multiple favorites with the same name).    - � . . Z   h a v e   m u l t i p l e   f a v o r i t e s   w i t h   t h e   s a m e   n a m e ) . +  / 0 / l   ��������  ��  ��   0  1 2 1 l   �� 3 4��   3 f ` Also, the favorites list can only be directly referenced within Transmit's tell block, which is    4 � 5 5 �   A l s o ,   t h e   f a v o r i t e s   l i s t   c a n   o n l y   b e   d i r e c t l y   r e f e r e n c e d   w i t h i n   T r a n s m i t ' s   t e l l   b l o c k ,   w h i c h   i s 2  6 7 6 l   �� 8 9��   8 b \ why we're setting a variable below instead of looking up the favorite within the tab's tell    9 � : : �   w h y   w e ' r e   s e t t i n g   a   v a r i a b l e   b e l o w   i n s t e a d   o f   l o o k i n g   u p   t h e   f a v o r i t e   w i t h i n   t h e   t a b ' s   t e l l 7  ; < ; l   �� = >��   =   block.    > � ? ?    b l o c k . <  @ A @ r     B C B b     D E D b     F G F m     H H � I I  ~ / g i t h u b / G o    ���� 0 mypath myPath E m     J J � K K  / _ s i t e C o      ���� 0 mylocal myLocal A  L M L r    " N O N b      P Q P m     R R � S S  / h o m e / r y a h a y 1 1 / Q o    ���� 0 mypath myPath O o      ���� 0 myremote myRemote M  T U T r   # 4 V W V n   # 2 X Y X 4   / 2�� Z
�� 
cobj Z m   0 1����  Y l  # / [���� [ 6  # / \ ] \ 2  # &��
�� 
FAvr ] =  ' . ^ _ ^ 1   ( *��
�� 
pnam _ m   + - ` ` � a a  D r e a m h o s t��  ��   W o      ���� 0 myfave myFave U  b c b l  5 I d e f d r   5 I g h g l  5 E i���� i 6  5 E j k j 2  5 :��
�� 
SkRu k =  ; D l m l 1   < >��
�� 
pnam m m   ? C n n � o o  N e w   R u l e��  ��   h o      ���� 0 myrules myRules e , & must be a set, not an individual item    f � p p L   m u s t   b e   a   s e t ,   n o t   a n   i n d i v i d u a l   i t e m c  q r q l  J J��������  ��  ��   r  s t s l  J J�� u v��   u B < Create a new window (and thus a single tab) for this script    v � w w x   C r e a t e   a   n e w   w i n d o w   ( a n d   t h u s   a   s i n g l e   t a b )   f o r   t h i s   s c r i p t t  x�� x O   J � y z y k   c � { {  | } | I  c l���� ~
�� .TrAnConfnull���     TaBc��   ~ �� ��
�� 
CoFa  o   g h���� 0 myfave myFave��   }  � � � l  m m��������  ��  ��   �  � � � l  m m�� � ���   � A ; Go into the local and remote folders that we want to sync.    � � � � v   G o   i n t o   t h e   l o c a l   a n d   r e m o t e   f o l d e r s   t h a t   w e   w a n t   t o   s y n c . �  � � � I  m z�� � �
�� .TrAnDiscnull���     FilV � 1   m r��
�� 
TaLV � �� ���
�� 
DiPa � o   u v���� 0 mylocal myLocal��   �  � � � I  { ��� � �
�� .TrAnDiscnull���     FilV � 1   { ���
�� 
TaRV � �� ���
�� 
DiPa � o   � ����� 0 myremote myRemote��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � ] W Run a basic sync from the current local folder to the current remote folder. (The sync    � � � � �   R u n   a   b a s i c   s y n c   f r o m   t h e   c u r r e n t   l o c a l   f o l d e r   t o   t h e   c u r r e n t   r e m o t e   f o l d e r .   ( T h e   s y n c �  � � � l  � ��� � ���   � L F command has many options, so be sure to check Transmit's dictionary.)    � � � � �   c o m m a n d   h a s   m a n y   o p t i o n s ,   s o   b e   s u r e   t o   c h e c k   T r a n s m i t ' s   d i c t i o n a r y . ) �  � � � I  � ��� � �
�� .TrAnSyncnull���     FilV � 1   � ���
�� 
TaLV � �� � �
�� 
SyTo � 1   � ���
�� 
TaRV � �� ���
�� 
SySr � o   � ����� 0 myrules myRules��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   �   Close the connection.    � � � � ,   C l o s e   t h e   c o n n e c t i o n . �  ��� � I  � ��� ���
�� .coreclosnull���     obj  � 1   � ���
�� 
TaRV��  ��   z n   J ` � � � 1   \ `��
�� 
doTa � l  J \ ����� � I  J \���� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m   N Q��
�� 
docu � �� ���
�� 
insh �  ;   T V��  ��  ��  ��    m     � ��                                                                                  TrAn  alis    V  Macintosh HD               �[�H+  d�Transmit.app                                                   �u/�rR&        ����  	                Applications    �\Ag      �r��    d�  'Macintosh HD:Applications: Transmit.app     T r a n s m i t . a p p    M a c i n t o s h   H D  Applications/Transmit.app   / ��  ��  ��     � � � l     ��������  ��  ��   �  ��� � l     ��������  ��  ��  ��       
�� � � � � � � �������   � ����������������
�� .aevtoappnull  �   � ****�� 0 mypath myPath�� 0 mylocal myLocal�� 0 myremote myRemote�� 0 myfave myFave�� 0 myrules myRules��  ��   � �� ����� � ���
�� .aevtoappnull  �   � **** � k     � � �   � �  ����  ��  ��   �   � # �������� � H J�� R���� � `������ n����~�}�|�{�z�y�x�w�v�u�t�s�r�q�p
�� .earsffdralis        afdr
�� 
ctnr
�� 
pnam�� 0 mypath myPath�� 0 mylocal myLocal�� 0 myremote myRemote
�� 
FAvr �  
�� 
cobj�� 0 myfave myFave
�� 
SkRu�� 0 myrules myRules
� 
kocl
�~ 
docu
�} 
insh�| 
�{ .corecrel****      � null
�z 
doTa
�y 
CoFa
�x .TrAnConfnull���     TaBc
�w 
TaLV
�v 
DiPa
�u .TrAnDiscnull���     FilV
�t 
TaRV
�s 
SyTo
�r 
SySr
�q .TrAnSyncnull���     FilV
�p .coreclosnull���     obj �� �� )j �,�,E�UO� ���%�%E�O��%E�O*�-�[�,\Z�81�k/E�O*a -�[�,\Za 81E` O*a a a *6a  a , K*a �l O*a ,a �l O*a ,a �l O*a ,a *a ,a  _ a  !O*a ,j "UU � � � � & w h a t a w o r d i s t h i s . c o m � � � � D ~ / g i t h u b / w h a t a w o r d i s t h i s . c o m / _ s i t e � � � � D / h o m e / r y a h a y 1 1 / w h a t a w o r d i s t h i s . c o m �  � �  ��o�n
�o 
FAvr�n  � �m ��m  �   � �  � �  ��l ��k
�l 
SkRu � � � � H 1 B 9 6 B A F A - E 2 1 2 - 4 5 8 3 - B E 9 0 - 3 C D 0 F 6 7 B B 3 B C
�k kfrmID  ��  ��   ascr  ��ޭ