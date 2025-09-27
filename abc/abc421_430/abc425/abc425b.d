import std;

void main() {
    int N;
    readf("%d\n", N);

    int[] A = readln.chomp.split.to!(int[]);

    bool[] B = new bool[](N + 1);
    foreach (a; A) {
        if (a == -1) {
            continue;
        }

        if (B[a]) {
            writeln("No");
            return;
        }

        B[a] = true;
    }

    int[] R = iota(1, N + 1).filter!(i => !B[i]).array;
    int P;
    foreach (ref a; A) {
        if (a == -1) {
            a = R[P++];
        }
    }

    string res = format("Yes\n%(%d %)", A);
    res.writeln;
}
