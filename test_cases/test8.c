//
// Created by Marco Siracusa on 3/14/19.
//

struct s1 {
    double d1;
    int i1;
};


int kernel1(struct s1 a1[static 2][2], struct s1 a11[static 2], struct s1 *a111) {

    int s = 0;
    /*for (int i = 0; i < 2; i++) {
        for (int j = 0; j < 2; j++) {
            s += a1[i + j][i * j].i1;
        }
    }*/
    return a1[1][1].i1 + a11[1].i1 + a111->i1 + s;
}

int main(void) {

    struct s1 a1[2][2];
    struct s1 a11[2];

    return kernel1(a1, a1[1], &a1[1][1]);
}
