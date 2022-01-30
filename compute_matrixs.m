function [B,G,C] = compute_matrixs(g,Ix_1,Ix_2,Iy_1,Iy_2,Iz_1,Iz_2,b_1,b_2,b_dot_1,b_dot_2,k_1,k_2,k_dot_1,k_dot_2,l_1,l_2,m_1,m_2,t_1,t_2,t_dot_1,t_dot_2,E_1,E_2,Gs_1,Gs_2)

C_11 = C11(Ix_1,Ix_2,Iy_1,Iy_2,Iz_1,Iz_2,b_1,b_2,b_dot_1,b_dot_2,k_1,k_2,k_dot_1,k_dot_2,l_1,l_2,m_1,m_2,t_1,t_2,t_dot_1,t_dot_2)
C_12 = C12(Ix_1,Ix_2,Iy_1,Iy_2,Iz_1,Iz_2,b_1,b_2,b_dot_1,b_dot_2,k_1,k_2,k_dot_1,k_dot_2,l_1,l_2,m_1,m_2,t_1,t_2,t_dot_1,t_dot_2)
C_13 = C13(Ix_1,Ix_2,Iy_1,Iy_2,Iz_1,Iz_2,b_1,b_2,b_dot_1,b_dot_2,k_1,k_2,k_dot_1,k_dot_2,l_1,l_2,m_1,m_2,t_1,t_2,t_dot_1,t_dot_2)
C_14 = C14(Ix_1,Ix_2,Iy_1,Iy_2,Iz_1,Iz_2,b_1,b_2,b_dot_1,b_dot_2,k_1,k_2,k_dot_1,k_dot_2,l_1,l_2,m_1,m_2,t_1,t_2,t_dot_1,t_dot_2)
C_15 = C15(Ix_1,Ix_2,Iy_1,Iy_2,Iz_1,Iz_2,b_1,b_2,b_dot_1,b_dot_2,k_1,k_2,k_dot_1,k_dot_2,l_1,l_2,m_1,m_2,t_1,t_2,t_dot_1,t_dot_2)
C_16 = C16(Ix_1,Ix_2,Iy_1,Iy_2,Iz_1,Iz_2,b_1,b_2,b_dot_1,b_dot_2,k_1,k_2,k_dot_1,k_dot_2,l_1,l_2,m_1,m_2,t_1,t_2,t_dot_1,t_dot_2)

C_21 = C21(Ix_1,Ix_2,Iy_1,Iy_2,Iz_1,Iz_2,b_1,b_2,b_dot_1,b_dot_2,k_1,k_2,k_dot_1,k_dot_2,l_1,l_2,m_1,m_2,t_1,t_2,t_dot_1,t_dot_2)
C_22 = C22(Ix_1,Ix_2,Iy_1,Iy_2,Iz_1,Iz_2,b_1,b_2,b_dot_1,b_dot_2,k_1,k_2,k_dot_1,k_dot_2,l_1,l_2,m_1,m_2,t_1,t_2,t_dot_1,t_dot_2)
C_23 = C23(Ix_1,Ix_2,Iy_1,Iy_2,Iz_1,Iz_2,b_1,b_2,b_dot_1,b_dot_2,k_1,k_2,k_dot_1,k_dot_2,l_1,l_2,m_1,m_2,t_1,t_2,t_dot_1,t_dot_2)
C_24 = C24(Ix_1,Ix_2,Iy_1,Iy_2,Iz_1,Iz_2,b_1,b_2,b_dot_1,b_dot_2,k_1,k_2,k_dot_1,k_dot_2,l_1,l_2,m_1,m_2,t_1,t_2,t_dot_1,t_dot_2)
C_25 = C25(Ix_1,Ix_2,Iy_1,Iy_2,Iz_1,Iz_2,b_1,b_2,b_dot_1,b_dot_2,k_1,k_2,k_dot_1,k_dot_2,l_1,l_2,m_1,m_2,t_1,t_2,t_dot_1,t_dot_2)
C_26 = C26(Ix_1,Ix_2,Iy_1,Iy_2,Iz_1,Iz_2,b_1,b_2,b_dot_1,b_dot_2,k_1,k_2,k_dot_1,k_dot_2,l_1,l_2,m_1,m_2,t_1,t_2,t_dot_1,t_dot_2)

C_31 = C31(Ix_1,Ix_2,Iy_1,Iy_2,Iz_1,Iz_2,b_1,b_2,b_dot_1,b_dot_2,k_1,k_2,k_dot_1,k_dot_2,l_1,l_2,m_1,m_2,t_1,t_2,t_dot_1,t_dot_2)
C_32 = C32(Ix_1,Ix_2,Iy_1,Iy_2,Iz_1,Iz_2,b_1,b_2,b_dot_1,b_dot_2,k_1,k_2,k_dot_1,k_dot_2,l_1,l_2,m_1,m_2,t_1,t_2,t_dot_1,t_dot_2)
C_33 = C33(Ix_1,Ix_2,Iy_1,Iy_2,Iz_1,Iz_2,b_1,b_2,b_dot_1,b_dot_2,k_1,k_2,k_dot_1,k_dot_2,l_1,l_2,m_1,m_2,t_1,t_2,t_dot_1,t_dot_2)
C_34 = C34(Ix_1,Ix_2,Iy_1,Iy_2,Iz_1,Iz_2,b_1,b_2,b_dot_1,b_dot_2,k_1,k_2,k_dot_1,k_dot_2,l_1,l_2,m_1,m_2,t_1,t_2,t_dot_1,t_dot_2)
C_35 = C35(Ix_1,Ix_2,Iy_1,Iy_2,Iz_1,Iz_2,b_1,b_2,b_dot_1,b_dot_2,k_1,k_2,k_dot_1,k_dot_2,l_1,l_2,m_1,m_2,t_1,t_2,t_dot_1,t_dot_2)
C_36 = C36(Ix_1,Ix_2,Iy_1,Iy_2,Iz_1,Iz_2,b_1,b_2,b_dot_1,b_dot_2,k_1,k_2,k_dot_1,k_dot_2,l_1,l_2,m_1,m_2,t_1,t_2,t_dot_1,t_dot_2)

C_41 = C41(Ix_1,Ix_2,Iy_1,Iy_2,Iz_1,Iz_2,b_1,b_2,b_dot_1,b_dot_2,k_1,k_2,k_dot_1,k_dot_2,l_1,l_2,m_1,m_2,t_1,t_2,t_dot_1,t_dot_2)
C_42 = C42(Ix_1,Ix_2,Iy_1,Iy_2,Iz_1,Iz_2,b_1,b_2,b_dot_1,b_dot_2,k_1,k_2,k_dot_1,k_dot_2,l_1,l_2,m_1,m_2,t_1,t_2,t_dot_1,t_dot_2)
C_43 = C43(Ix_1,Ix_2,Iy_1,Iy_2,Iz_1,Iz_2,b_1,b_2,b_dot_1,b_dot_2,k_1,k_2,k_dot_1,k_dot_2,l_1,l_2,m_1,m_2,t_1,t_2,t_dot_1,t_dot_2)
C_44 = C44(Ix_1,Ix_2,Iy_1,Iy_2,Iz_1,Iz_2,b_1,b_2,b_dot_1,b_dot_2,k_1,k_2,k_dot_1,k_dot_2,l_1,l_2,m_1,m_2,t_1,t_2,t_dot_1,t_dot_2)
C_45 = C45(Ix_1,Ix_2,Iy_1,Iy_2,Iz_1,Iz_2,b_1,b_2,b_dot_1,b_dot_2,k_1,k_2,k_dot_1,k_dot_2,l_1,l_2,m_1,m_2,t_1,t_2,t_dot_1,t_dot_2)
C_46 = C46(Ix_1,Ix_2,Iy_1,Iy_2,Iz_1,Iz_2,b_1,b_2,b_dot_1,b_dot_2,k_1,k_2,k_dot_1,k_dot_2,l_1,l_2,m_1,m_2,t_1,t_2,t_dot_1,t_dot_2)

C_51 = C51(Ix_1,Ix_2,Iy_1,Iy_2,Iz_1,Iz_2,b_1,b_2,b_dot_1,b_dot_2,k_1,k_2,k_dot_1,k_dot_2,l_1,l_2,m_1,m_2,t_1,t_2,t_dot_1,t_dot_2)
C_52 = C52(Ix_1,Ix_2,Iy_1,Iy_2,Iz_1,Iz_2,b_1,b_2,b_dot_1,b_dot_2,k_1,k_2,k_dot_1,k_dot_2,l_1,l_2,m_1,m_2,t_1,t_2,t_dot_1,t_dot_2)
C_53 =C53(Ix_1,Ix_2,Iy_1,Iy_2,Iz_1,Iz_2,b_1,b_2,b_dot_1,b_dot_2,k_1,k_2,k_dot_1,k_dot_2,l_1,l_2,m_1,m_2,t_1,t_2,t_dot_1,t_dot_2)
C_54 = C54(Ix_1,Ix_2,Iy_1,Iy_2,Iz_1,Iz_2,b_1,b_2,b_dot_1,b_dot_2,k_1,k_2,k_dot_1,k_dot_2,l_1,l_2,m_1,m_2,t_1,t_2,t_dot_1,t_dot_2)
C_55 = C55(Ix_1,Ix_2,Iy_1,Iy_2,Iz_1,Iz_2,b_1,b_2,b_dot_1,b_dot_2,k_1,k_2,k_dot_1,k_dot_2,l_1,l_2,m_1,m_2,t_1,t_2,t_dot_1,t_dot_2)
C_56 = C56(Ix_1,Ix_2,Iy_1,Iy_2,Iz_1,Iz_2,b_1,b_2,b_dot_1,b_dot_2,k_1,k_2,k_dot_1,k_dot_2,l_1,l_2,m_1,m_2,t_1,t_2,t_dot_1,t_dot_2)

C_61 = C61(Ix_1,Ix_2,Iy_1,Iy_2,Iz_1,Iz_2,b_1,b_2,b_dot_1,b_dot_2,k_1,k_2,k_dot_1,k_dot_2,l_1,l_2,m_1,m_2,t_1,t_2,t_dot_1,t_dot_2)
C_62 = C62(Ix_1,Ix_2,Iy_1,Iy_2,Iz_1,Iz_2,b_1,b_2,b_dot_1,b_dot_2,k_1,k_2,k_dot_1,k_dot_2,l_1,l_2,m_1,m_2,t_1,t_2,t_dot_1,t_dot_2)
C_63 = C63(Ix_1,Ix_2,Iy_1,Iy_2,Iz_1,Iz_2,b_1,b_2,b_dot_1,b_dot_2,k_1,k_2,k_dot_1,k_dot_2,l_1,l_2,m_1,m_2,t_1,t_2,t_dot_1,t_dot_2)
C_64 = C64(Ix_1,Ix_2,Iy_1,Iy_2,Iz_1,Iz_2,b_1,b_2,b_dot_1,b_dot_2,k_1,k_2,k_dot_1,k_dot_2,l_1,l_2,m_1,m_2,t_1,t_2,t_dot_1,t_dot_2)
C_65 = C65(Ix_1,Ix_2,Iy_1,Iy_2,Iz_1,Iz_2,b_1,b_2,b_dot_1,b_dot_2,k_1,k_2,k_dot_1,k_dot_2,l_1,l_2,m_1,m_2,t_1,t_2,t_dot_1,t_dot_2)
C_66 = C16(Ix_1,Ix_2,Iy_1,Iy_2,Iz_1,Iz_2,b_1,b_2,b_dot_1,b_dot_2,k_1,k_2,k_dot_1,k_dot_2,l_1,l_2,m_1,m_2,t_1,t_2,t_dot_1,t_dot_2)
B_matrix = B(Ix_1,Ix_2,Iy_1,Iy_2,Iz_1,Iz_2,b_1,b_2,k_1,k_2,l_1,l_2,m_1,m_2,t_1,t_2);
G_matrix = G(E_1,E_2,Gs_1,Gs_2,Ix_1,Ix_2,Iy_1,Iy_2,Iz_1,Iz_2,b_1,b_2,g,k_1,k_2,l_1,l_2,m_1,m_2,t_1,t_2);
C_matrix = [    C_11 , C_12, C_13 , C_14 , C_15 , C_16 ;
                C_21 , C_22, C_23 , C_24 , C_25 , C_26 ;
                C_31 , C_32, C_33 , C_34 , C_35 , C_36 ;
                C_41 , C_42, C_43 , C_44 , C_45 , C_46 ;
                C_51 , C_52, C_53 , C_54 , C_55 , C_56 ;
                C_61 , C_62, C_63 , C_64 , C_65 , C_66 ;
                ];
            
end

