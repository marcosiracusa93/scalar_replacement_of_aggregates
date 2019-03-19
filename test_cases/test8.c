//
// Created by Marco Siracusa on 3/14/19.
//

struct s1 {
    int i1;
    double d1;
};

/*
int kernel1(struct s1 a1[static 2][2], struct s1 a11[static 2], struct s1 *a111) {

    return a1[1][1].i1 + a11[1].i1 + a111->i1;
}
*/

int kernel1(struct s1 a1[static 2][2]) {

    return a1[1][1].i1;
}
int main(void) {

    struct s1 a1[2][2];

    //return kernel1(a1, &a1[1], &a1[1][1]);
    return kernel1(a1);
}
