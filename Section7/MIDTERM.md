What is This Repo?
This repo (midterm) was a collection of all the various labs and activities we that relate to Linux, windows and Docker hardening. We were taught information and knowledge about all three subjects, including: their aspects, their vulnerabilities, how to harden said vulnerabilities, and how to report and analyze within each. The midterm tests our knowledge and allows us to apply said knowledge.

Cross-platform hardening comparision:


|Control Area|Linux|Windows|Docker|
|-|-|-|-|
|Kernel Model|Linux kernel with full user-space isolation.|Windows NT kernel with kernel/user space separation.|Shares the host OS kernel (Linux or Windows); containers share the kernel but have isolated user space through namespaces and cgroups.|
|Access Control|Based on three entities: owner, group, and others. Three permission types: read (r), write (w), and execute (x). Access control is managed through chown on the command line instead of the utilization of a service.|Based on a service known as Active Directory (AD). Permissions are applied through three entities: users, computers, and policies. Access control is operated through AD instead of the command line.|Based on Linux and utilizes Linux core features. Permissions are applied through namespaces and Control Groups (cgroups). Docker relies on Linux kernel features to operate access control.|
|Auditing/Logging|Generated log files are stored in the /var/log directory. Further information can be found in /proc, which contains kernel and process data in real time. Linux does not utilize a built-in central area to review logs like Windows.|Logs are generated through Windows Event Viewer. Event Viewer provides a centralized location to view logs.|Utilizes Linux features, including the /var/log and /proc directories.|
|Hardening Standard|Involves only installing relevant packages on a system, disabling unused services, configuring firewalls, and hardening SSH. All hardening is done through the command line.|Involves applying CIS / DISA STIG baselines, disabling SMBv1 and other legacy protocols, and enabling Windows Defender Application Control (WDAC). Most hardening and security are handled through Windows Defender and other built-in Windows systems.|Involves using minimal base images, vulnerability scanning (such as Trivy), signing images with cosign, and applying AppArmor/Seccomp profiles.|
|Common Attack Surface|Various directories are prime targets for attacks, such as /etc, /home, and /tmp. Attacks can stem from abusing the information that resides in these file directories.|Attacks can stem from stealing credentials using the Local Security Authority Subsystem Service (LSASS), hiding malware within the NTFS file system, and malware or misconfigurations within the Windows Registry.|Attacks can stem from containers running as root, being granted privileged mode, exposed Docker sockets, and not scanning publicly accessible images, which can contain malware.|



Supply-chain threat model:



|Attack Attempts|Controls|
|-|-|
|Exploiting Docker Configurations|Docker bench security checks (Week 5, Slide 5)|
|Creating an unauthorized Windows account|Sigma rules detect windows security events, including Event ID 4720. (Week 5, Slide 9)|
|Exploiting or creating vulnerabilities in applications. |Trivy and Grype vulnerability scans can keep you up to date and with the most secure suggestion. (Week 5, Slide 5 - 6)|
|||



Section 1: Demonstrated objective 2

Section 2: Demonstrated objective 3

Section 3: Demonstrated objective 1

Section 4: Demonstrated objective 4

Section 5: Demonstrated objective 1

Section 6: Demonstrated objectives 5, 6, and 7







