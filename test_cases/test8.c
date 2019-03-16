//
// Created by Marco Siracusa on 3/14/19.
//

struct s1 {
    int i1;
    double d1;
};

int kernel1(int a1[static 2], int q) {

    return a1[1];
}

int main(void) {

    int a1[2];

    return kernel1(a1, 1);
}
