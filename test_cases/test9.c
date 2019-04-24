//
// Created by Marco Siracusa on 3/27/19.
//

struct s1 {
    double d1;
    int i1;
    int i2;
    int a1[3];
};

struct s1 s11[3];

int kernel1(/*struct s1 a1[static 3][3], */struct s1 a11[3], int k) {

    for (int i = 0; i < 3; i++) {
        a11[k].a1[i] = s11[k].a1[i];
    }

    return a11[k].a1[k];
}


int main(void) {

    struct s1 a1[3][3];
    struct s1 a11[3];
    int k = 0;

    return kernel1(a11, k);
}
