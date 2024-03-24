import std;

void main() {
    int N, A, B, C;
    readf("%d\n%d %d\n%d\n", N, A, B, C);

    auto D = new int[](N);
    foreach (i; 0 .. N) readf("%d\n", D[i]);

    D.sort!"a > b";

    int calorie = C, dollar = A;
    foreach (d; D) {
        if (calorie / dollar <= (calorie + d) / (dollar + B)) {
            calorie += d, dollar += B;
        }
    }

    int res = calorie / dollar;
    res.writeln;
}