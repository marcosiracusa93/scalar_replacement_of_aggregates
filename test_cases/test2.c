//
// Created by Marco Siracusa on 2/27/19.
//

struct s2 {
    int i1;
    char c1;
};

struct s1 {
    unsigned long long d1;
    int i1;
    double d2;
    short s1;
    int ai1[2][2];
    float pf1;
    //struct s2 as2[2];
};

/*
int f1(struct s1 *s11) {
    return s11->i1;
}
*/

int kernel3(int *i1, int idx) {
    return i1[idx];
}
int kernel2(int *i1) {
    return *i1;
}

int kernel(struct s1 *s11, int i) {

    return kernel2(&s11->i1) + kernel2(&s11->i1) + i;
    return (int)s11->d1 +
           s11->i1 +
           (int)s11->d2 +
           (int)s11->s1 +
           s11->ai1[0][0] + s11->ai1[0][1] + s11->ai1[1][0] + s11->ai1[1][1] +
           (int)s11->pf1;// +
           //s11->as2[0].i1 + s11->as2[0].c1 + s11->as2[1].i1 + s11->as2[1].c1;
}

int kernel1(int a1[2][2]) {
    return a1[0][0] + a1[0][1] + a1[1][0] + a1[1][1];
}

/*
int kernel(struct s1 s11) {

    struct s1 s12;
    s12 = s11;
    s12.i1++;
    f1(s12);
    return s12.i1;
}
*/

int main(void) {

    int a1[2][2];

    a1[0][0] = 0;
    a1[0][1] = 1;
    a1[1][0] = 2;
    a1[1][1] = 3;

    struct s1 s11;

    s11.d1 = 123;
    s11.i1 = 11;
    s11.d2 = 321e-20;

    s11.s1 = 2;

    s11.ai1[0][0] = 0;
    s11.ai1[0][1] = 1;
    s11.ai1[1][0] = 2;
    s11.ai1[1][1] = 3;

    s11.pf1 = 1.1;

/*
    s11.as2[0].i1 = 1;
    s11.as2[0].c1 = 1;
    s11.as2[1].i1 = 1;
    s11.as2[1].c1 = 1;
*/
/*
    return (int)s11.d1 +
           s11.i1 +
           (int)s11.d2 +
           (int)s11.s1 +
           s11.ai1[0][0] + s11.ai1[0][1] + s11.ai1[1][0] + s11.ai1[1][1] +
           (int)s11.pf1 +
           s11.as2[0].i1 + s11.as2[0].c1 + s11.as2[1].i1 + s11.as2[1].c1;
*/
    int k;
    return kernel(&s11, 1) + kernel(&s11, 2) /*+ kernel1(a1)*/ + kernel2(&s11.i1) + kernel3(a1[1], 1);
}