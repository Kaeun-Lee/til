# Ctrl+Shift+c : �ּ� ����

# 1. ������(Operator) ----
# 1.1 ��� ������ ----
# +, -, *, /, **, ^(Ŀ��), %%, %/%
# ���ο� ����(��, Feature) (-���� ã�Ƴ��� ��) ���� ���� �����
3 + 4     # ������
3 - 4     # ����
3 * 4     # ���ϱ�
3 / 4     # ������
3 ** 4    # �ŵ�����
3 ^ 4     # �ŵ�����
13 %% 4   # ������
13 %/% 4  # ��


# 1.2 �Ҵ� ������ ----
# <- , ->, =
# �����ϴ� ���(������ or �׷���)
# <-, -> : �Ϲ����� ���� ���
# =      : '�Լ� �ȿ���' argument�� �����ϴ� ���
# Alt + - : '<-' ����
x <- rnorm(n = 100, mean = 10, sd = 2)
# ���� ���� (random normal distribution : ���Ժ�ǥ), �̰� ���� ����� 10�̶�� ��
# ������ �����ϸ� �̰��� ram���� �ö󰣴� (ram: �޸�)
x


# ����
# rnorm()     : �Լ�
# n, mean, sd : rnorm() �Լ��� argument
10 ->  y
y


# 1.3 �� ������ ----
# >, >=, <, <=, ==, !=, !(not)    
# ex) ������ > ���ϴ� ����
# ��ü �����Ϳ��� ���ǿ� �´� �����͸� ������ �� ���
3 > 4
3 >= 4
3 < 4
3 <= 4
3 == 4
3 != 4
(3 == 4)
!(3 == 4)


# 1.4 ���� ������ ----
# &, |(vertical var, pipe)
# ��ü ������ �߿��� ���ǿ� �´� �����͸� ������ �� ���
# ���� : 2�� �̻��� ��
# & : and
# | : or
# Alt + Shift + ��     : ����
# ������� + Ctrl + D : ����
(3 > 4) & (5 > 4)   
(3 > 4) | (5 > 4)   



# 2. �������� ����(Type of Data) ----
# �ڷ�
# a. ���� �ڷ�(������ �ڷ�) : ����, ����(but ������ �ǹ� X) : categorical
# b. ���� �ڷ�(��ġ�� �ڷ�) : ����(������ �ǹ� O)

# 2.1 ��ġ��(Numeric) ----
# (1) ����(integer)
# (2) �Ǽ�(double)
x1 <- 10
x2 <- 10.2


# 2.2 ������(Character) ----
x3 <- 'I see you.'
x4 <- "Love is not feeling."


# 2.3 ������(Logical) ----
x5 <- TRUE   # T
x6 <- FALSE  # F

# NA(Not Available) = Missing Value = ����ġ, ������
# ������ ���� Ȯ���ϴ� �Լ�(������ ����� ��ȯ)
# : mode(), is.numeric(), is.character(), is.logical(), is.null(), is.na() �� mode(x1)
mode(x3)
mode(x5)
# ������ ���� �����ϴ� �Լ�
# : as.numeric(), as.character(), as.logical() ��



# 3. Data ----
# 3.1 Vector ----
# ��ġ�� �ڷ�
# �ϳ��� ���� �����Ǿ� ����
# 1���� ����
# �ϳ��� ������ ������ ����
# �������� �ν����� ����
# ������ �м��� ���� �⺻ ����

# (1) Vector�� ���� ----
# c()
v1 <- c(3, 10, 12)
v2 <- c("Kim", "Lee", "Park")
V3 <- c(v1, v2)
v4 <- -3.3:5

# seq()
v1 <- seq(from = 1, to =5, by = 0.5)

# (2) Vector�� �Ӽ� ----
# �������� ���� : length(Vector)
length(v1)

# �������� ���� : �����̽�(slicing)
weight <- c(57, 81, 65, 49, 72)
weight[1]
weight[2:4]
weight[-c(1,4,5)]


# 3.2 Factor ----
# ������ �ڷ�
# �ϳ��� ���� �����Ǿ� ����
# 1���� ����
# �ϳ��� ������ ������ ����
# �������� �ν���
# ������ �м��� ���� �⺻ ����
# Vector�� "�������� �ν���"�̶�� �κп����� �ٸ�

# (1) Factor�� ���� ----
bt <- c("a", "o", "a", "ab", "o", "b")
bt_factor1 <- factor(bt)
bt_factor2 <- factor(bt, labels = c("A��", "AB��", "B��", "O��"))
bt_factor3 <- factor(bt, levels = c("a", "b", "ab", "o"))
bt_factor4 <- factor(bt,
                     levels = c("a", "b", "ab", "o"),
                     labels = c("A��", "B��", "AB��", "O��"),
                     ordered = TRUE)

# (2) Factor�� �Ӽ� ----
# ������ ����
nlevels(bt_factor1)

# ������ �̸��� ������ ����
levels(bt_factor1)


# 3.3 Data.Frame ----
# ��� ���� �����Ǿ� ����
# 2���� ����
# �ٸ� ���� �ٸ� ������ ������ ���� �� ����
id <- 1:3
bt <- c("a", "b", "o")
age <- c(10, 20, 30)
survey <- data.frame(id, bt, age)


# 3.4 List ----
# �߱� �̻��� ������ �м��� ����� ��κ� List
# 1���� ����
# ���� ������ ������ ������(�ٸ� ����� ���� �� �ִ�)
s1 <- 10
v1 <- 1:10
f1 <- factor(c("A", "O", "A", "AB", "O", "B"))
df1 <- data.frame(id = 1:3, age = c(20,30,40))
result <- list(s1, v1, f1, df1)


# ����Ʈ �����̽�
# a. ���ȣ �ϳ� ���� ��
# �������� ����� ����Ʈ
result[2]

# b. ���ȣ �� �� ���� ��
# �������� ����� �ش� ������ ������ ����
result[[2]]



# 4. �ܺ� ������ �о���� ----
# 4.1 txt ----
# (�޸𸮸� ���� �����ϸ鼭 ���� �����͸� ������, ������ ���� �����)
# data <- read.table(file              = "directory/filename.txt,
#                    header            = TRUE or FALSE,
#                    sep               = " " or "," or "\t",
#                    stringsAsFactors  = TRUE or FALSE)
# header = TRUE�̸� data�� �ִ� column���� �״�� ���ٴ� ��
# stringAsFactors = TRUE�̸� ���ڷ� �Ǿ��ִ� ���� Factor�� ����ٴ� ��
favor <- read.table(file             = "D:/KCISA/favor.txt",
                    header           = TRUE,
                    sep              = ',',
                    stringsAsFactors = TRUE)
favor

# favor��� data frame���� �ϳ��� ���� ���� ���� �� $���
mean(favor$culture)  # ��ȭ��� ��� �󸶸� ����ϴ��� Ȯ��


# 4.2 csv ----
# data <- read.csv(file             = "directory/filename.csv",
#                  header           = TRUE or FALSE,
#                  stringsAsFactors = TRUE or FALSE)
hope <- read.csv(file             = 'D:/KCISA/hope.csv',
                 header           = TRUE,
                 stringsAsFactors = TRUE)
hope


# 4.3 xlsx ----
# R�� �⺻ ��ɿ��� �� �о��
# R�� ���ο� ����� ��ġ�ϰ� �ε��ϱ⸦ �ؾ� ��
# ��Ű�� ��ġ�ϱ� : install.packages("��Ű����")
install.packages("readxl")  
# �̱��� �ִ� R ������ ���� �޾ƿ�. �׷��� ���� ������ �� ��ǻ�� ���� ��򰡿� ����

# ��Ű�� �ε��ϱ� : library(��Ű����)
# install�ص� library ����� ������ �ҷ��;� ��
library(readxl)


# data <- readxl::read_excel(path      = "directory/filename.xlsx",
#                            sheet     = "sheet_name" or sheet_index,
#                            col_names = TRUE or FALSE)
culture <- readxl::read_excel(path      = "D:/KCISA/culture.xlsx",
                              sheet     = "DM",
                              col_names = TRUE)
View(culture)


# Alt + ��, �� : �ڵ� �� �̵�
culture2 <- readxl::read_excel(path     = "D:/KCISA/culture.xlsx",
                              sheet     = 1,
                              col_names = TRUE)
View(culture2)


# �۾�����(Working Directory) ----
# ��� ����̺��� � ������ �ִ���? R�� �м��ϴ� ������ ������� �����!
# (1) ���� ������ �۾����� : getwd()
getwd()


# (2) ���ο� �۾����� �����ϱ� : setwd("directory")
setwd("d:/KCISA/")

culture3 <- readxl::read_excel(path     = "culture.xlsx",
                              sheet     = 1,
                              col_names = TRUE)
View(culture3)



# 5. �ܺ� �����ͷ� �����ϱ� ----
# 5.1 txt ----
# 5.2 csv ----
# 5.3 xlsx ---
# ��Ű�� : writexl
install.packages("writexl")
library(writexl)

# writexl : write_xlsx(data, 
#                      path = "directory/filename.xlsx")
writexl::write_xlsx(culture,
                    path = "culture_2020_1112_1037.xlsx")


# 6. RData�� �����ϰ� �ҷ����� ----
# 6.1 RData�� �����ϱ� ----
# RAM�� �ִ� rdata�� HDD(Hard Drive)�� rdata�� �����ϱ�
# save(data, file = 'directory/filename.RData")  �۾��ϴٰ� �ڸ� ��� ������ �̰� ������ �ֱ�
# .R : ���α׷� �ڵ带 ������ ����
# .RData : �۾��ϰ� �ִ� �����͸� ������ ����
save(culture, file = "culture_2020_1112_1050.RData") 
# �޸𸮿� �ִ°� �ϵ�� �����


# 6.2 RData�� �ҷ�����
# HDD�� �ִ� rdata�� RAM�� rdata�� �ø��� ���
# load(file = "directory/filename.RData")
load(file = "culture_2020_1112_1050.RData")
