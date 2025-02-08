import std;

void main() {
    auto A = readln.chomp.split.to!(int[]);

    foreach (B; A.permutations) {
        if (B[0] * B[1] == B[2]) {
            writeln("Yes");
            return;
        }
    }

    writeln("No");
}
