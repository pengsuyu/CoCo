%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This program is to change your favo. pic. to an elegant code annotation. 
% Copyright (C) <2016>  <Suyu Peng> 
% This program is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
% You should have received a copy of the GNU General Public License
% along with this program.  If not, see <http://www.gnu.org/licenses/>.
%     c 
%                                                                                                 i8i 
%                                                                                               X7B   
%                                                                                               R     
%                                                                                         ll    :     
%                                                                                       ml      O     
%                                                                                      b9       K     
%                                                                                    ib    lY   3  ej 
%                                                                                   [_   _IY    ;  \  
%                                                                                 2B3   7d      \ Dk  
%                                                                                3L   H`b         <   
%                                                                               OL   Y\               
%                                                                              _B   [Y       ;8       
%                                                                             Ol  FU>       _@  P     
%                                                                            \h  lR         9   :     
%                                                                           @e  @c         @j  F=     
%                                                                          @W  NF         dU  Si      
%                                                                         B_  _H         T5  4Q       
%                                                                       aj9  TN         1E  ;b        
%                                                                 DQ;VAY[   _L         6?   i         
%                                                            :dRn5         L7         l1   a          
%                                                         cf6I            Ab          K   i<          
%                                                      A:9         fTS9eWF           P   I5           
%                                                    ?8<      ?J4hk                 OO  Eh            
%                                                  G7a     I?J6                     9  kl             
%                                                T4?    Fc13                        ; Y^              
%                                              YLR    C_<                           [  <G             
%                                             Wa    6ja                             O   LL            
%                                           CPP   cbX                               Hc   RF           
%                                          kg    SW                                  U=   CN          
%                        ?e=?;?LDjK<imL7 AJU   AV                                     ]>   8C         
%              DKP6Ab2j^O               T?    Ml                                       RQ   ?O        
%           W[I                             Gn                                          3g   ib       
%      7AE                    [9]7YOa      ]i                                   hE       \=   2_      
%  PNiV   W    fbT<?g2O;m]PN4[       35Q6cc                                    ]  :Y      Qm   Y      
%         bM                                                                Kd69   ;       Id  b4     
%           IQ                                                             JY      W        CK  1n    
%  ;         7H=                                                           O       F      l  j4  ^A   
%   KRkJ       mC\                                                         ZR     \Z     <8   n   ;   
%      3SgZ      <GMm                                                       :fXH<KN    8U     ?H  U@  
%         CWAd       m^FU7igcA       U 2K                                              D    ;  <   K  
%            6VN\             \X35D  Q YJ                                             c]  mQ   E7  V  
%                aK6                 A  :                                             B  LQ     M   g 
%                   QkXl?ZB     Z    \  5                                             @  >      Ze  F 
%                          aZ1VHi1   M  KM                         `                  D  aN      3  ; 
%                                    ]   N         :FV           <^ @i                A   `<B6T  [  R 
%                                     K  X     Y[Xk  =\          ?   8                 V         LM   
%                                     Z  `    FZ      J          ed @                  WU         R   
%                                     f  AD   8       k           YN  X   RY            R]Q   n>  7   
%                                     74  J   LG     `W               `jm<9\               6QQf   O   
%                                      I  Z    ^Q   F:               U      A                     3   
%                                      _  @L     [G^              I[     \L2E                     K   
%                                      A=  c                      K   hI`I                        c   
%                                       _  H                     >  bkE                           ZLd 
%                                       `  ;                      fnP                                 
%                                       g  U:  =J_daDR                                                
%                                       6   7 9      [O<                                              
%                                       O:  4          e                                              
%                                        S  j   \Ucgn   1                                             
%                                        f  V       nQ  N                                             
%                                        b   ?       O  h                                             
%                                        Te  ^U      @  Z                                             
%                                         6   WY    ^h  m                                             
%                                         `U   jT   2  8f                                             
%                                          Oe   =S     X                                              
%                                     2WG   4O   <8=                                                  
%                                    :< 3X   BR    \OR                                                
%                                    L   8O   eg     A=TX                                             
%                                   J=          k6      79;W                                          
%                                   T     4j^     ^4f      jn                                         
%                                   f  aP <          I92     k                                        
%                                   CC    E             MY2eS                                         
%                                    e    F                                                           
%                                     L    4                                                          
%                                     ;Z   Eh8                                                        
%                                      nR    \n                                                       
%                                        BJ    M`                                                     
%                                          c7   <G 
% 
%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all;
close all;
clc;

scale = 0.6;   % scale of the image.


img = imread('miku.jpg');
img = rgb2gray(imresize(img,[round(scale*size(img,1)) round(scale*size(img,2))]));

img_canny = edge(img,'canny');    % you can select the other way to find the edge or not.
subplot(211);
imshow(img);
subplot(212);
imshow(img_canny);

codeAnno = char(zeros(size(img)));

for i=1:size(img,1)
    for j=1:size(img,2)
        if img_canny(i,j) ==0           %use the edge info.
        %if img > 200                   %not use the edge info.
            codeAnno(i,j)=' ';
        else
            codeAnno(i,j)=char(48+randi(62));
        end
    end
end

codeAnno