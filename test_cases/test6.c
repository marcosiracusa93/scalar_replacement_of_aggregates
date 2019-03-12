//
// Created by Fabrizio Ferrandi on 3/12/19.
//

struct s1 {
    double d1;
    int i1;
    int i2;
    int o1;
};

struct s3 {
    int i1;
    struct s1 s11;
};

int kernel1(struct s3 *s31) {

    s31->i1 = s31->i1 + s31->s11.i1;
    return s31->i1;
}

int kernel2(struct s1 *s11) {

    s11->o1 = s11->i1 + s11->i2;
    return s11->o1;
}

int main(void) {

    struct s3 s31;
    s31.i1 = 1;
    s31.s11.i1 = 11;
    s31.s11.i2 = 12;
    s31.s11.d1 = 123e+10;
    int res1 = kernel1(&s31);
    int res2 = kernel2(&s31.s11);
    struct s1 s11;
    s11.d1=3.;
    s11.i1=1;
    s11.i2=2;
    int res3 = kernel2(&s11);

    return res3 + res1 + res2 + s31.i1 + s11.o1;
}
