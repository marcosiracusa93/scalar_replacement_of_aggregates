//
// Created by Marco Siracusa on 8/5/19.
//

int f2(int a1[2]) {
    return a1[1];
}

int f3(int a1[3][2], int a2[3][2], int a3[2]) {
    a1[0][0] = (a1[0][0] == 0 ? a3[0] : a3[1]);
    return a2[0][0];
}

int f1(int a1[2][3], int a2[3][2], int a3[3]) {
    int v1 = f2(&a3[1]);
    int v2 = f3(a2);

    return v1 + v2 + a1[0][0];
}

int main() {
    int a1[2][3] = {0, 1, 2, 3, 4, 5, 6};
    int a2[3][2] = {0, 1, 2, 3, 4, 5, 6};

    return f1(a1, a2, a1[1]);
}