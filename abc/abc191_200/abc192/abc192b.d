import std;

void main() {
    auto S = readln.chomp;

    bool isOK = true;
    foreach (i, s; S) {
        if (i % 2 == 0) isOK &= std.uni.isLower(s);
        else isOK &= std.uni.isUpper(s);
    }

    writeln(isOK ? "Yes" : "No");
}