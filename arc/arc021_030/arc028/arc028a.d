import std;

void main() {
    int N, A, B;
    readfln(" %d %d %d", N, A, B);

    int D = A + B;
    int R = N % D;

    string res = 0 < R && R <= A ? "Ant" : "Bug";
    res.writeln;
}
