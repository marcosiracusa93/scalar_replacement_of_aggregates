//
// Created by Marco Siracusa on 3/27/19.
//

struct s1 {
    double d1;
    int i1;
};


int kernel1(/*struct s1 a1[static 3][3], */struct s1 a11[static 3], int k) {

    int val = a11[k].i1;

    if (k == 0) {
        val = a11[0].i1;
    } else if (k == 1) {
        val = a11[1].i1;
    } else if (k == 2) {
        val = a11[2].i1;
    }

    return val;
}

int main(void) {

    struct s1 a1[3][3];
    struct s1 a11[3];
    int k;

    return kernel1(a11, k);
}
