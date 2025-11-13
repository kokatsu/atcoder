import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    bool[] T = new bool[](N + 1);

    string[] V = new string[](M);
    V[] = "No";

    foreach (i; 0 .. M) {
        int A;
        dchar B;
        readf("%d %c\n", A, B);

        if (B == 'M' && !T[A]) {
            V[i] = "Yes";
            T[A] = true;
        }
    }

    string res = format("%-(%s\n%)", V);
    res.writeln;
}
