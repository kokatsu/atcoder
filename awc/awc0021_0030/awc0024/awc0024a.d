import std;

void main() {
    int N, Q;
    readfln("%d %d", N, Q);

    int[] S = readln.chomp.split.to!(int[]);

    string[] R = new string[](Q);
    foreach (ref r; R) {
        int a, b;
        readfln("%d %d", a, b);

        r = S[a - 1] > S[b - 1] ? "Yes" : "No";
    }

    string res = format("%-(%s\n%)", R);
    res.writeln;
}
