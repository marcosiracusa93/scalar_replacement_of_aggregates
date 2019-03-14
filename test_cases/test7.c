//
// Created by Marco Siracusa on 3/13/19.
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

int kernel2(struct s3 *s31);

int kernel1(struct s3 *s31) {

    return kernel2(s31);
}

int kernel2(struct s3 *s31) {

    s31->s11.i2 = s31->s11.i1;
    return s31->s11.i2;
}

int main(void) {

    struct s3 s31;
    s31.i1 = 1;
    s31.s11.i1 = 11;
    s31.s11.i2 = 12;
    s31.s11.d1 = 123e+10;
    return kernel1(&s31);

}
