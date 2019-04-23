//
// Created by Marco Siracusa on 3/14/19.
//

struct s1 {
    double d1;
    int i1;
    int a1[2];
};

int kernel2(struct s1 a1[2][2], struct s1 a11[2], struct s1 *a111) {

    return a1[1][1].i1 + a11[1].i1 + a111->i1 + a1[1][1].a1[1];
}

int kernel1(struct s1 a1[2][2], struct s1 a11[2], struct s1 *a111) {

    int k = 0;
    k += kernel2(a1, a1[1], &a11[1]);
    k += kernel2(a1, a11, a111);
    return a1[1][1].i1 + a11[1].i1 + a111->i1 + k;
}

int main(void) {

    struct s1 a1[2][2];
    struct s1 a11[2];
    struct s1 a12[4];

    return kernel1(a1, a11, &a1[1][1]) + kernel2(a1, a1[1], &a1[1][1]);
}
