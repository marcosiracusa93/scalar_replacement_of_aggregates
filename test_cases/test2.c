//
// Created by Marco Siracusa on 2/27/19.
//

struct s1 {
    double d1;
    int i1;
    short as1[3];
    float *pf1;
};


int f1(struct s1 *s11) {
    return s11->i1;
}

int kernel(struct s1 *s11, int *s11i1) {

    s11->i1 = s11->i1 + *s11i1;
    f1(s11);
    return s11->i1;
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

    struct s1 s11;
    struct s1 s12;
    s11.d1 = 123e+20;
    s11.i1 = 11;
    s11.as1[0] = 0;
    s11.as1[1] = 1;
    s11.as1[2] = 2;
    float bf1 = 1.1;
    s11.pf1 = &bf1;

    s12 = s11;

    return kernel(&s11, &s11.i1);
}