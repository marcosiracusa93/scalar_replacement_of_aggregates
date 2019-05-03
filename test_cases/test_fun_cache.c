//
// Created by Marco Siracusa on 5/1/19.
//

int f1(int a1[][2], int a2[][2]) {
    return a1[1][1] + a2[1][1];
}

int main() {

    int a1[2][2];
    int a2[3][2];

    return f1(a1, a1) + f1(a1, a1) + f1(a2, a2) + f1(a2, a2);
}