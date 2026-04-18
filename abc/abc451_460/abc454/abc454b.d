import std;

void main() {
    int N, M;
    readfln("%d %d", N, M);

    int[] F = readln.chomp.split.to!(int[]);

    int[] U = F.dup.sort.uniq.array;

    string A1 = U.length == N ? "Yes" : "No";
    string A2 = U.length == M ? "Yes" : "No";

    string res = format("%s\n%s", A1, A2);
    res.writeln;
}
