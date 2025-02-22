import std;

void main() {
    string S;
    readf("%s\n", S);

    string L = "([<";
    dchar[dchar] D = [')': '(', ']': '[', '>': '<'];
    dchar[] stack;
    bool isOk = true;
    foreach (c; S) {
        if (L.canFind(c)) {
            stack ~= c;
        }
        else {
            if (!stack.empty && stack.back == D[c]) {
                stack.popBack;
            }
            else {
                isOk = false;
                break;
            }
        }
    }

    isOk &= stack.empty;

    string res = isOk ? "Yes" : "No";
    res.writeln;
}
