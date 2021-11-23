import std;

void main() {
    string S1 = readln.chomp;
    string S2 = readln.chomp;
    string S3 = readln.chomp;

    int n = "BGHR".map!(i => i - 'A').sum;
    foreach (s; [S1, S2, S3]) {
        n -= s[1] - 'A';
    }

    writeln('A', (n + 'A').to!dchar, 'C');
}