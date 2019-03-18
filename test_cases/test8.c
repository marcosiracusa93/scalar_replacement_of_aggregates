//
// Created by Marco Siracusa on 3/14/19.
//

struct s1 {
    int i1;
    double d1;
};

int kernel1(struct s1 a1[static 2], struct s1 *s11, struct s1 *a1_1, int q) {

    return a1[1].i1 + s11->i1 + a1_1->i1;
}

int main(void) {

    struct s1 a1[2];
    struct s1 s11;

    return kernel1(a1, &s11, &a1[0], 1);
}
