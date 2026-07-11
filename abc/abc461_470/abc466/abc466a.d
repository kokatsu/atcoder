import std;

void main() {
    int N;
    readfln("%d", N);

    int[] X = readln.chomp.split.to!(int[]);

    string res = X.all!(a => a < 0) ? "Yes" : "No";
    res.writeln;
}
