//
// Created by Marco Siracusa on 3/27/19.
//

struct s1 {
    double d1;
    int i1;
    int a1[9];
};

struct s1 s11[3];
struct s1 s111;

int kernel2(int a1[9]) {
    return a1[1];
}

void kernel3(int *k, int *j) {

    *k += 3;
    return;
}

int kernel1(/*struct s1 a1[static 3][3], */struct s1 a11[3], struct s1 *a111, int k) {

    k = s11[1].a1[1] + s111.a1[1] + kernel2(a111->a1);

    return a11[1].a1[1] + a111->a1[1] + k;
}

int main(void) {

    struct s1 a1[3][3];
    struct s1 a11[3];
    struct s1 a111;
    a111.i1 = 1;
    a111.d1 = 1.0;

    int k = 0;

    kernel3(&k, &k);

    return kernel1(a11, &a111, k);
}
