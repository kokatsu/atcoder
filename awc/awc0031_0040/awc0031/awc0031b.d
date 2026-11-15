import std;

void main() {
    int N, T;
    readfln("%d %d", N, T);

    int res;
    foreach (_; 0 .. T) {
        int[] S = readln.chomp.split.to!(int[]);

        S.sort!"a > b";

        if (S[0] >= S[1] * 2) {
            ++res;
        }
    }

    res.writeln;
}
